import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/presentation/button_widget.dart';
import 'package:studenda_mobile/core/presentation/dropdown_widget.dart';
import 'package:studenda_mobile/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/course_cubit/course_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/department_cubit/department_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selection_bloc.dart';
import 'package:studenda_mobile/injection_container.dart';

class GuestGroupSelectorPage extends StatefulWidget {
  const GuestGroupSelectorPage({super.key});

  @override
  State<GuestGroupSelectorPage> createState() => _GuestGroupSelectorPageState();
}

class _GuestGroupSelectorPageState extends State<GuestGroupSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: const GroupSelectorAppBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<MainGroupSelectionBloc>(
            create: (context) => sl<MainGroupSelectionBloc>(),
          ),
          BlocProvider<DepartmentCubit>(
            create: (context) => sl<DepartmentCubit>(),
          ),
          BlocProvider<CourseCubit>(
            create: (context) => sl<CourseCubit>(),
          ),
          BlocProvider<GroupCubit>(
            create: (context) => sl<GroupCubit>(),
          ),
        ],
        child: const _GroupSelectorWidget(),
      ),
    );
  }
}

class _GroupSelectorWidget extends StatelessWidget {
  const _GroupSelectorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainCubit = context.watch<MainGroupSelectionBloc>();
    final groupCubit = context.watch<GroupCubit>();
    final courseCubit = context.watch<CourseCubit>();
    final departmentCubit = context.watch<DepartmentCubit>();

    groupCubit.load();
    courseCubit.load();
    departmentCubit.load();

    if (groupCubit.state == const GroupState.loading() ||
        courseCubit.state == const CourseState.loading() ||
        departmentCubit.state == const DepartmentState.loading()) {
      mainCubit.add(const MainGroupSelectionEvent.load());
    } else if (groupCubit.state == const GroupState.fail() ||
        courseCubit.state == const CourseState.fail() ||
        departmentCubit.state == const DepartmentState.fail()) {
      mainCubit.add(const MainGroupSelectionEvent.fail("Ошибка загрузки"));
    } else {
      mainCubit.add(const MainGroupSelectionEvent.success());
    }

    mainCubit.state.when(
      initial: () => Container(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      success: () => Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _DepartmentSelectionWidget(
                  mainCubit: mainCubit, departmentCubit: departmentCubit),
              _CourseSelectionWidget(
                  mainCubit: mainCubit, courseCubit: courseCubit),
              _GroupSelectionWidget(
                  mainCubit: mainCubit, groupCubit: groupCubit),
              StudendaButton(
                title: "Подтвердить",
                event: () {
                  Navigator.of(context).pushReplacementNamed('/main_nav');
                },
              ),
            ],
          ),
        ),
      ),
      fail: (errorMessage) => Center(child: Text(errorMessage)),
    );

    throw const LoadGroupSelectorFailure(
        message: "Непредвиденная ошибка загрузки");
  }
}

class _GroupSelectionWidget extends StatelessWidget {
  final MainGroupSelectionBloc mainCubit;

  final GroupCubit groupCubit;

  const _GroupSelectionWidget(
      {required this.mainCubit, required this.groupCubit});

  @override
  Widget build(BuildContext context) {
    return groupCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (groups) => StudendaDropdown(
        items: groups,
        model: groups[0],
        callback: (element) {
          mainCubit.add(
            MainGroupSelectionEvent.setGroup(element!),
          );
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _CourseSelectionWidget extends StatelessWidget {
  final MainGroupSelectionBloc mainCubit;

  final CourseCubit courseCubit;

  const _CourseSelectionWidget(
      {required this.mainCubit, required this.courseCubit});

  @override
  Widget build(BuildContext context) {
    return courseCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (courses) => StudendaDropdown(
        items: courses,
        model: courses[0],
        callback: (element) {
          mainCubit.add(
            MainGroupSelectionEvent.setCourse(element!),
          );
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _DepartmentSelectionWidget extends StatelessWidget {
  final MainGroupSelectionBloc mainCubit;

  final DepartmentCubit departmentCubit;

  const _DepartmentSelectionWidget(
      {required this.mainCubit, required this.departmentCubit});

  @override
  Widget build(BuildContext context) {
    return departmentCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (departments) => StudendaDropdown(
        items: departments,
        model: departments[0],
        callback: (element) {
          mainCubit.add(
            MainGroupSelectionEvent.setDepartment(element!),
          );
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class GroupSelectorAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const GroupSelectorAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.chevron_left_sharp,
          color: Colors.white,
        ),
        onPressed: () => {Navigator.of(context).pop()},
      ),
      titleSpacing: 0,
      centerTitle: true,
      title: const Text(
        'Выбор группы',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
