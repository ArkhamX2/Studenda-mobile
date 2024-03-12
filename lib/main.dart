import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:studenda_mobile_student/core/constant_values/routes.dart';
import 'package:studenda_mobile_student/core/navigator/navigator.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/cubit/token_cubit.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/pages/main_auth_widget.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/pages/guest_group_selector.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/page/student_journal_main_screen_page.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/pages/student_schedule_screen_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/pages/teacher_schedule_screen.dart';
import 'package:studenda_mobile_student/injection_container.dart' as di;
import 'package:studenda_mobile_student/injection_container.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<MainGroupSelectorBloc>()
            ..add(
              const MainGroupSelectorEvent.getGroup(),
            ),
        ),
        BlocProvider(create: (context) => sl<TokenCubit>()..getToken()),
        BlocProvider(create: (context) => sl<AuthBloc>()),
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
        home: const _SplashScreen(),
        routes: {
          mainRoute: (context) => const MainNavigatorWidget(),
          scheduleRoute: (context) => const StudentScheduleScreenPage(),
          journalRoute: (context) => const StudentJournalMainScreenPage(),
          selectorRoute: (context) => const GroupSelectorPage(),
          authRoute: (context) => const MainAuthPage(),
          teacherScheduleRoute: (context) => const TeacherScheduleScreenPage(),
          teacherJournalRoute: (context) => Container(),
        },
      ),
    );
  }
}

class _SplashScreen extends StatefulWidget {
  const _SplashScreen();

  @override
  State<_SplashScreen> createState() => __SplashScreenState();
}

class __SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    Future.delayed(const Duration(seconds: 3, milliseconds: 500)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Initializer()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(child: StudendaLoadingWidget()),
    );
  }
}

class Initializer extends StatefulWidget {
  const Initializer({super.key});

  @override
  State<Initializer> createState() => _InitializerState();
}

class _InitializerState extends State<Initializer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tokenCubit = context.watch<TokenCubit>();
    return tokenCubit.state.when(
      initial: () => const Center(child: StudendaLoadingWidget()),
      authorized: (token) => const Center(child: StudendaLoadingWidget()),
      fail: (l) => const MainAuthPage(),
      unauthorized: () => const MainAuthPage(),
      tokenSuccess: (token) {
        final selectorBloc = context.watch<MainGroupSelectorBloc>();
        return selectorBloc.state.when(
          initial: () => const Center(child: StudendaLoadingWidget()),
          loading: () => const Center(child: StudendaLoadingWidget()),
          groupSuccess: (group) {
            return const MainNavigatorWidget();
          },
          courseSuccess: (course) =>
              const Center(child: StudendaLoadingWidget()),
          departmentSuccess: (department) =>
              const Center(child: StudendaLoadingWidget()),
          fail: (message) {
            return const GroupSelectorPage();
          },
        );
      },
    );
  }
}
