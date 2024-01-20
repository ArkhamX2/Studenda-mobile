import 'package:flutter/material.dart';
import 'package:studenda_mobile/feature/auth/presentation/pages/main_auth_widget.dart';
import 'package:studenda_mobile/feature/home/presentation/widgets/home_screen_widget.dart';
import 'package:studenda_mobile/feature/journal/presentation/widgets/journal_main_screen_widget.dart';
import 'package:studenda_mobile/feature/navigation/presentation/widgets/main_navigator_widget.dart';
import 'package:studenda_mobile/feature/notification/presentation/widgets/notification_screen_widget.dart';
import 'package:studenda_mobile/feature/schedule/presentation/pages/schedule_screen_widget.dart';
import 'package:studenda_mobile/injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studenda',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor:  Color.fromARGB(255, 101, 59, 159), ),
        fontFamily: 'Inter',
      ),
      home: const MainNavigatorWidget(),

      routes: {
        '/auth': (context) => const MainAuthPage(),
        '/main_nav': (context) => const MainNavigatorWidget(),
        '/home': (context) => const HomeScreenWidget(),
        '/schedule': (context) => const ScheduleScreenWidget(),
        '/journal': (context) => const JournalMainScreenWidget(),
        '/notification': (context) => const NotificationScreenWidget(),
      },
      initialRoute: '/schedule',
    );
  }
}
