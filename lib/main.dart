import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:studenda_mobile_student/core/navigator/navigator.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/pages/guest_group_selector.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_main_screen_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/pages/schedule_screen_widget.dart';
import 'package:studenda_mobile_student/injection_container.dart' as di;
import 'package:studenda_mobile_student/injection_container.dart';

void main() async {
  await Hive.initFlutter();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainGroupSelectorBloc>(
          create: (context) => sl<MainGroupSelectorBloc>()..add(MainGroupSelectorEvent.getGroup()),
        ),
      ],
      child: MaterialApp(
        title: 'Studenda',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 101, 59, 159),
          ),
          fontFamily: 'Inter',
        ),
        home: const MainNavigatorWidget(),
        initialRoute: '/main',
        routes: {
          '/main' : (context) => const MainNavigatorWidget(),
          '/schedule': (context) => const ScheduleScreenPage(),
          '/journal': (context) => const JournalMainScreenPage(),
          '/selector': (context) => const GroupSelectorPage(),
        },
      ),
    );
  }
}
