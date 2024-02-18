import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_main_screen_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/pages/schedule_screen_widget.dart';

class MainNavigatorWidget extends StatefulWidget {
  const MainNavigatorWidget({super.key});

  @override
  State<MainNavigatorWidget> createState() =>
      _MainNavigatorWidgetState();
}

class _MainNavigatorWidgetState extends State<MainNavigatorWidget> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const ScheduleScreenPage(),
    const JournalMainScreenPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: "Расписание",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Журнал",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}