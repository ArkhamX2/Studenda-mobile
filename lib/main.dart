import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/pages/main_auth_widget.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selection_bloc.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/pages/guest_group_selector.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_main_screen_widget.dart';
import 'package:studenda_mobile_student/feature/navigation/presentation/widgets/main_navigator_widget.dart';
import 'package:studenda_mobile_student/feature/notification/presentation/widgets/notification_screen_widget.dart';
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
        BlocProvider<GroupSelectorBloc>(
          create: (context) => sl<GroupSelectorBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Studenda',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 101, 59, 159),
          ),
          fontFamily: 'Inter',
        ),
        home: const MainNavigatorWidget(),
        routes: {
          '/auth': (context) => const MainAuthPage(),
          '/main_nav': (context) => const MainNavigatorWidget(),
          '/schedule': (context) => const ScheduleScreenWidget(),
          '/journal': (context) => const JournalMainScreenWidget(),
          '/notification': (context) => const NotificationScreenWidget(),
          '/group_selection': (context) => const GuestGroupSelectorPage(),
        },
        initialRoute: '/group_selection',
      ),
    );
  }
}
