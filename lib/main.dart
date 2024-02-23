import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:studenda_mobile_student/core/constant_values/routes.dart';
import 'package:studenda_mobile_student/core/navigator/navigator.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/pages/main_auth_widget.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/pages/guest_group_selector.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_main_screen_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/pages/schedule_screen_widget.dart';
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
    return BlocProvider<MainGroupSelectorBloc>(
      create: (context) => sl<MainGroupSelectorBloc>()
        ..add(const MainGroupSelectorEvent.getGroup()),
      child: MaterialApp(
        title: 'Studenda',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 101, 59, 159),
          ),
          fontFamily: 'Inter',
        ),
        home: const Initializer(),
        routes: {
          mainRoute: (context) => const MainNavigatorWidget(),
          scheduleRoute: (context) => const ScheduleScreenPage(),
          journalRoute: (context) => const JournalMainScreenPage(),
          selectorRoute: (context) => const GroupSelectorPage(),
          authRoute: (context) => const MainAuthPage(),
        },
      ),
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
    final selectorBloc = context.watch<MainGroupSelectorBloc>();
    return selectorBloc.state.when(
      initial: () => Container(),
      loading: () => Container(),
      groupSuccess: (group) {
        FlutterNativeSplash.remove();
        return const MainNavigatorWidget();
      },
      courseSuccess: (course) => Container(),
      departmentSuccess: (department) => Container(),
      fail: (message) {
        FlutterNativeSplash.remove();
        return const GroupSelectorPage();
      },
    );
  }
}
