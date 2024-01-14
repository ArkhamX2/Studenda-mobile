import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile/core/presentation/button_widget.dart';
import 'package:studenda_mobile/core/presentation/dropdown_widget.dart';
import 'package:studenda_mobile/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/course_cubit/course_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/department_cubit/department_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/main_group_selection_cubit/main_group_selection_cubit.dart';
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
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocProvider(
                create: (context) => sl<DepartmentCubit>(),
                child: const _DepartmentSelectionWidget(),
              ),
              BlocProvider(
                create: (context) => sl<CourseCubit>(),
                child: const _CourseSelectionWidget(),
              ),
              BlocProvider(
                create: (context) => sl<GroupCubit>(),
                child: const _GroupSelectionWidget(),
              ),
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
    );
  }
}

class _GroupSelectionWidget extends StatelessWidget {
  const _GroupSelectionWidget();

  @override
  Widget build(BuildContext context) {
    final groupCubit = context.watch<GroupCubit>();
    final mainSelectorCubit = context.watch<MainGroupSelectionCubit>();
    groupCubit.load();
    final state = groupCubit.state;

    return state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (groups) => StudendaDropdown(
        items: groups,
        model: groups[0],
        callback: (element) {
          mainSelectorCubit.setGroup(element!);
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _CourseSelectionWidget extends StatelessWidget {
  const _CourseSelectionWidget();

  @override
  Widget build(BuildContext context) {
    final courseCubit = context.watch<CourseCubit>();
    final mainSelectorCubit = context.watch<MainGroupSelectionCubit>();
    courseCubit.load();
    final state = courseCubit.state;

    return state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (courses) => StudendaDropdown(
        items: courses,
        model: courses[0],
        callback: (element) {
          mainSelectorCubit.setCourse(element!);
        },
      ),
      fail: (message) =>
          StudendaDefaultLabelWidget(text: message, fontSize: 16),
    );
  }
}

class _DepartmentSelectionWidget extends StatelessWidget {
  const _DepartmentSelectionWidget();

  @override
  Widget build(BuildContext context) {
    final departmentCubit = context.watch<DepartmentCubit>();
    final mainSelectorCubit = context.watch<MainGroupSelectionCubit>();
    departmentCubit.load();
    final state = departmentCubit.state;

    return state.when(
      initial: () => Container(),
      loading: () => Container(),
      success: (departments) => StudendaDropdown(
        items: departments,
        model: departments[0],
        callback: (element) {
          mainSelectorCubit.setDepartment(element!);
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
        //TODO: Сделать чтобы отображалась текущая выбранная группа
        'Выбор группы',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
