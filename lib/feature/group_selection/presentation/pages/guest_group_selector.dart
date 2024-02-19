import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/button_widget.dart';
import 'package:studenda_mobile_student/core/presentation/dropdown_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/course_cubit/course_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/department_cubit/department_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/injection_container.dart';

class GroupSelectorPage extends StatefulWidget {
  const GroupSelectorPage({super.key});

  @override
  State<GroupSelectorPage> createState() => _GroupSelectorPageState();
}

class _GroupSelectorPageState extends State<GroupSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: const GroupSelectorAppBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<DepartmentCubit>(
            create: (context) => sl<DepartmentCubit>()..loadLocally(),
          ),
          BlocProvider<CourseCubit>(
            create: (context) => sl<CourseCubit>()..loadLocally(),
          ),
          BlocProvider<GroupCubit>(
            create: (context) => sl<GroupCubit>()..loadLocally(),
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
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    final groupCubit = context.watch<GroupCubit>();
    final courseCubit = context.watch<CourseCubit>();
    final departmentCubit = context.watch<DepartmentCubit>();

    return Builder(
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
              padding: const EdgeInsets.symmetric(horizontal: 57),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _DepartmentSelectionWidget(
                    mainBloc: groupSelectorBloc,
                    departmentCubit: departmentCubit,
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  _CourseSelectionWidget(
                    mainBloc: groupSelectorBloc,
                    courseCubit: courseCubit,
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  _GroupSelectionWidget(
                    mainBloc: groupSelectorBloc,
                    groupCubit: groupCubit,
                  ),
                  const SizedBox(
                    height: 184,
                  ),
                  StudendaButton(
                    title: "Подтвердить",
                    event: () {
                      Navigator.of(context).pushReplacementNamed('/main');
                    },
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

class _GroupSelectionWidget extends StatelessWidget {
  final MainGroupSelectorBloc mainBloc;

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
      localLoadingFail: (message) {
        groupCubit.load();
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      localLoadingSuccess: (groups) {
        if (groups.isEmpty) {
          groupCubit.load();
        } else {
          mainBloc.add(
            MainGroupSelectorEvent.setGroup(
              groups.first,
            ),
          );
        }
        return StudendaDropdown<GroupEntity>(
          items: groups,
          model: groups.isEmpty ? null : groups.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setGroup(element!),
            );
          },
        );
      },
      success: (groups) {
        if (groups.isNotEmpty) {
          mainBloc.add(
            MainGroupSelectorEvent.setGroup(
              groups.first,
            ),
          );
        }
        return StudendaDropdown<GroupEntity>(
          items: groups,
          model: groups.isEmpty ? null : groups.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setGroup(element!),
            );
          },
        );
      },
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _CourseSelectionWidget extends StatelessWidget {
  final MainGroupSelectorBloc mainBloc;

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
      localLoadingFail: (message) {
        courseCubit.load();
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      localLoadingSuccess: (courses) {
        if (courses.isEmpty) {
          courseCubit.load();
        } else {
          mainBloc.add(
            MainGroupSelectorEvent.setCourse(
              courses.first,
            ),
          );
        }

        return StudendaDropdown<CourseEntity>(
          items: courses,
          model: courses.isEmpty ? null : courses.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setCourse(element!),
            );
          },
        );
      },
      success: (courses) {
        if (courses.isNotEmpty) {
          mainBloc.add(
            MainGroupSelectorEvent.setCourse(
              courses.first,
            ),
          );
        }
        return StudendaDropdown<CourseEntity>(
          items: courses,
          model: courses.isEmpty ? null : courses.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setCourse(element!),
            );
          },
        );
      },
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _DepartmentSelectionWidget extends StatelessWidget {
  final MainGroupSelectorBloc mainBloc;

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
      localLoadingFail: (message) {
        departmentCubit.load();
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      fail: (message) {
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      localLoadingSuccess: (departments) {
        if (departments.isEmpty) {
          departmentCubit.load();
        } else {
          mainBloc.add(
            MainGroupSelectorEvent.setDepartment(
              departments.first,
            ),
          );
        }

        return StudendaDropdown<DepartmentEntity>(
          items: departments,
          model: departments.isEmpty ? null : departments.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setDepartment(element!),
            );
          },
        );
      },
      success: (departments) {
        if (departments.isNotEmpty) {
          mainBloc.add(
            MainGroupSelectorEvent.setDepartment(
              departments.first,
            ),
          );
        }
        return StudendaDropdown<DepartmentEntity>(
          items: departments,
          model: departments.isEmpty ? null : departments.first,
          callback: (element) {
            mainBloc.add(
              MainGroupSelectorEvent.setDepartment(element!),
            );
          },
        );
      },
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
