import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile/core/common/presentation/bloc/common_bloc.dart';
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
          BlocProvider<DepartmentCubit>(
            create: (context) => sl<DepartmentCubit>()..load(),
          ),
          BlocProvider<CourseCubit>(
            create: (context) => sl<CourseCubit>()..load(),
          ),
          BlocProvider<GroupCubit>(
            create: (context) => sl<GroupCubit>()..load(),
          ),
        ],
        child: const _GroupSelectorWidget(),
      ),
    );
  }
}

class _GroupSelectorWidget extends StatelessWidget {
  const _GroupSelectorWidget();

  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<GroupSelectorBloc>();
    final groupCubit = context.watch<GroupCubit>();
    final courseCubit = context.watch<CourseCubit>();
    final departmentCubit = context.watch<DepartmentCubit>();

    return BlocProvider<GroupSelectorBloc>(
      create: (context) {
        if (groupCubit.groupList != null &&
            departmentCubit.departmentList != null &&
            courseCubit.courseList != null) {
          groupSelectorBloc
            ..add(
              GroupSelectorEvent.setGroup(
                groupCubit.groupList!.first,
              ),
            )
            ..add(
              GroupSelectorEvent.setDepartment(
                departmentCubit.departmentList!.first,
              ),
            )
            ..add(
              GroupSelectorEvent.setCourse(
                courseCubit.courseList!.first,
              ),
            );
        }
        return groupSelectorBloc;
      },
      child: Builder(
        builder: (context) {
          final groupsState = groupCubit.state;
          final coursesState = courseCubit.state;
          final departmentsState = departmentCubit.state;

          if (groupsState == const GroupState.loading() ||
              coursesState == const CourseState.loading() ||
              departmentsState == const DepartmentState.loading()) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StudendaDefaultLabelWidget(
                      fontSize: 16,
                      text: groupSelectorBloc.selectedDepartment.name,
                    ),
                    StudendaDefaultLabelWidget(
                      fontSize: 16,
                      text: groupSelectorBloc.selectedCourse.name,
                    ),
                    StudendaDefaultLabelWidget(
                      fontSize: 16,
                      text: groupSelectorBloc.selectedGroup.name,
                    ),
                    _DepartmentSelectionWidget(
                      mainBloc: groupSelectorBloc,
                      departmentCubit: departmentCubit,
                    ),
                    _CourseSelectionWidget(
                      mainBloc: groupSelectorBloc,
                      courseCubit: courseCubit,
                    ),
                    _GroupSelectionWidget(
                      mainBloc: groupSelectorBloc,
                      groupCubit: groupCubit,
                    ),
                    StudendaButton(
                      title: "Подтвердить",
                      event: () {
                        Navigator.of(context).pushReplacementNamed('/schedule');
                      },
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class _GroupSelectionWidget extends StatelessWidget {
  final GroupSelectorBloc mainBloc;

  final GroupCubit groupCubit;

  const _GroupSelectionWidget({
    required this.mainBloc,
    required this.groupCubit,
  });

  @override
  Widget build(BuildContext context) {
    return groupCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (groups) => StudendaDropdown(
        items: groups,
        model: groups[0],
        callback: (element) {
          mainBloc.add(
            GroupSelectorEvent.setGroup(element!),
          );
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _CourseSelectionWidget extends StatelessWidget {
  final GroupSelectorBloc mainBloc;

  final CourseCubit courseCubit;

  const _CourseSelectionWidget({
    required this.mainBloc,
    required this.courseCubit,
  });

  @override
  Widget build(BuildContext context) {
    return courseCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (courses) => StudendaDropdown(
        items: courses,
        model: courses[0],
        callback: (element) {
          mainBloc.add(
            GroupSelectorEvent.setCourse(element!),
          );
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _DepartmentSelectionWidget extends StatelessWidget {
  final GroupSelectorBloc mainBloc;

  final DepartmentCubit departmentCubit;

  const _DepartmentSelectionWidget({
    required this.mainBloc,
    required this.departmentCubit,
  });

  @override
  Widget build(BuildContext context) {
    return departmentCubit.state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (departments) => StudendaDropdown(
        items: departments,
        model: departments[0],
        callback: (element) {
          mainBloc.add(
            GroupSelectorEvent.setDepartment(element!),
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
