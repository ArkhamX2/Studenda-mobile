import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/constant_values/presentation_const_values.dart';
import 'package:studenda_mobile_student/core/constant_values/routes.dart';
import 'package:studenda_mobile_student/core/presentation/UI/snack_message.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/day_position/day_position_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/discipline/discipline_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject/subject_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject_position/subject_position_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject_type/subject_type_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/week_type/week_type_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/date_carousel_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/group_selector_text_style.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/week_schedule_widget.dart';
import 'package:studenda_mobile_student/injection_container.dart';

class TeacherScheduleScreenPage extends StatefulWidget {
  const TeacherScheduleScreenPage({super.key});

  @override
  State<TeacherScheduleScreenPage> createState() =>
      _TeacherScheduleScreenPageState();
}

class _TeacherScheduleScreenPageState extends State<TeacherScheduleScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GroupCubit>(
          create: (context) => sl<GroupCubit>()..loadLocally(),
        ),
        BlocProvider<DayPositionCubit>(
          create: (context) => sl<DayPositionCubit>()..loadLocally(),
        ),
        BlocProvider<DisciplineCubit>(
          create: (context) => sl<DisciplineCubit>(),
        ),
        BlocProvider<SubjectCubit>(
          create: (context) => sl<SubjectCubit>(),
        ),
        BlocProvider<SubjectPositionCubit>(
          create: (context) => sl<SubjectPositionCubit>()..loadLocally(),
        ),
        BlocProvider<SubjectTypeCubit>(
          create: (context) => sl<SubjectTypeCubit>()..loadLocally(),
        ),
        BlocProvider<WeekTypeCubit>(
          create: (context) => sl<WeekTypeCubit>()..loadLocally(),
        ),
      ],
      child: const Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 241, 245),
        appBar: _ScheduleAppBarWidget(),
        body: _ScheduleBodyWidget(),
      ),
    );
  }
}

class _ScheduleBodyWidget extends StatefulWidget {
  const _ScheduleBodyWidget();

  @override
  State<_ScheduleBodyWidget> createState() => _ScheduleBodyWidgetState();
}

class _ScheduleBodyWidgetState extends State<_ScheduleBodyWidget> {
  List<GlobalObjectKey> keys = List.generate(
    7,
    (index) => GlobalObjectKey(index),
  );

  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    final groupCubit = context.watch<GroupCubit>();
    final dayPositionCubit = context.watch<DayPositionCubit>();
    final disciplineCubit = context.watch<DisciplineCubit>();
    final subjectCubit = context.watch<SubjectCubit>();
    final subjectPositionCubit = context.watch<SubjectPositionCubit>();
    final subjectTypeCubit = context.watch<SubjectTypeCubit>();
    final weekTypeCubit = context.watch<WeekTypeCubit>()..getCurrent();

    if (weekTypeCubit.state is CurrentWeekTypeSuccess) {
      subjectCubit.loadTeacherLocally(
        groupSelectorBloc.selectedGroup.id,
        [weekTypeCubit.currentWeekType!],
      );
    }

    if (subjectCubit.state is SubjectLocalLoadingFail) {
      subjectCubit.loadTeacher(
        groupSelectorBloc.selectedGroup.id,
        [weekTypeCubit.currentWeekType!],
      );
    }

    if (groupCubit.state is GroupLocalLoadingFail ||
        (groupCubit.state is GroupLocalLoadingSuccess &&
            groupCubit.groupList.isEmpty)) {
      groupCubit.load();
    }

    return Column(
      children: [
        _DateCarouselWrapperWidget(
          globalKeys: keys,
          groupId: groupSelectorBloc.selectedGroup.id,
        ),
        const SizedBox(
          height: 10,
        ),
        subjectCubit.state.when(
          initial: () => const Center(
            child: StudendaLoadingWidget(),
          ),
          loading: () => const Center(
            child: StudendaLoadingWidget(),
          ),
          localLoadingFail: (message) {
            subjectCubit.loadTeacher(
              groupSelectorBloc.selectedGroup.id,
              [weekTypeCubit.currentWeekType!],
            );
            return Center(
              child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
            );
          },
          loadingFail: (message) => Center(
            child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
          ),
          localLoadingSuccess: (subjectList) {
            if (subjectList.isEmpty) {
              subjectCubit.loadTeacher(
                groupSelectorBloc.selectedGroup.id,
                [weekTypeCubit.currentWeekType!],
              );
            }

            disciplineCubit.loadLocally(_getDisciplineIds(subjectList));

            if (disciplineCubit.state is DisciplineSuccess) {
              return disciplineCubit.state.maybeWhen(
                success: (disciplineList) => _ScheduleScrollWidget(
                  schedule: mapSubjectModelToDayScheduleList(
                    subjectList,
                    disciplineList,
                    [],
                    dayPositionCubit.state.maybeWhen(
                      success: (dayPositionList) => dayPositionList,
                      orElse: () => [],
                    ),
                    subjectPositionCubit.state.maybeWhen(
                      success: (subjectPositionList) => subjectPositionList,
                      orElse: () => [],
                    ),
                    subjectTypeCubit.state.maybeWhen(
                      success: (subjectTypeList) => subjectTypeList,
                      orElse: () => [],
                    ),
                    groupCubit.groupList,
                  ),
                  globalKeys: keys,
                  currentWeekDay: getCurrentWeekDay(),
                  needHighlight:
                      getCurrentWeekSixDaysWithMonth(weekTypeCubit.datePointer)
                          .any(
                    (element) =>
                        element ==
                        "${DateTime.now().day} ${monthNames[DateTime.now().month - 1]}",
                  ),
                ),
                orElse: () => const Center(
                  child: StudendaLoadingWidget(),
                ),
              );
            } else {
              return const Center(
                child: StudendaLoadingWidget(),
              );
            }
          },
          loadingSuccess: (subjectList) {
            disciplineCubit.loadLocally(_getDisciplineIds(subjectList));

            if (disciplineCubit.state is DisciplineSuccess) {
              return disciplineCubit.state.maybeWhen(
                success: (disciplineList) => _ScheduleScrollWidget(
                  schedule: mapSubjectModelToDayScheduleList(
                    subjectList,
                    disciplineList,
                    [],
                    dayPositionCubit.state.maybeWhen(
                      success: (dayPositionList) => dayPositionList,
                      orElse: () => [],
                    ),
                    subjectPositionCubit.state.maybeWhen(
                      success: (subjectPositionList) => subjectPositionList,
                      orElse: () => [],
                    ),
                    subjectTypeCubit.state.maybeWhen(
                      success: (subjectTypeList) => subjectTypeList,
                      orElse: () => [],
                    ),
                    groupCubit.groupList,
                  ),
                  globalKeys: keys,
                  currentWeekDay: getCurrentWeekDay(),
                  needHighlight:
                      getCurrentWeekSixDaysWithMonth(weekTypeCubit.datePointer)
                          .any(
                    (element) =>
                        element ==
                        "${DateTime.now().day} ${monthNames[DateTime.now().month - 1]}",
                  ),
                ),
                orElse: () => const Center(
                  child: StudendaLoadingWidget(),
                ),
              );
            } else {
              return const Center(
                child: StudendaLoadingWidget(),
              );
            }
          },
        ),
      ],
    );
  }
}

List<int> _getDisciplineIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.disciplineId ?? -1).toSet().toList();
}

class _DateCarouselWrapperWidget extends StatelessWidget {
  final List<GlobalObjectKey> globalKeys;
  final int groupId;

  const _DateCarouselWrapperWidget({
    required this.globalKeys,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    final weekTypeCubit = context.watch<WeekTypeCubit>();
    final subjectCubit = context.watch<SubjectCubit>();
    return DateCarouselWidget(
      onDateTap: (int index) {
        final destination = globalKeys.where((key) => key.value == index);
        if (destination.isNotEmpty &&
            destination.first.currentContext != null) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          snackMessage(context, noLessonOnChosenDay);
        }
      },
      onPrevTap: () async {
        await weekTypeCubit.subtractWeekType();
        if (weekTypeCubit.state is CurrentWeekTypeSuccess) {
          subjectCubit.loadTeacherLocally(groupId, [weekTypeCubit.currentWeekType!]);
        }
      },
      onNextTap: () async {
        await weekTypeCubit.addWeekType();
        if (weekTypeCubit.state is CurrentWeekTypeSuccess) {
          subjectCubit.loadTeacherLocally(groupId, [weekTypeCubit.currentWeekType!]);
        }
      },
    );
  }
}

class _ScheduleScrollWidget extends StatefulWidget {
  final List<GlobalObjectKey> globalKeys;

  final List<DayScheduleEntity> schedule;

  final int currentWeekDay;
  final bool needHighlight;

  const _ScheduleScrollWidget({
    required this.globalKeys,
    required this.schedule,
    required this.currentWeekDay,
    required this.needHighlight,
  });

  @override
  State<_ScheduleScrollWidget> createState() => _ScheduleScrollWidgetState();
}

class _ScheduleScrollWidgetState extends State<_ScheduleScrollWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.needHighlight) {
        final destination = widget.globalKeys
            .where((key) => key.value == widget.currentWeekDay - 1);
        if (destination.isNotEmpty &&
            destination.first.currentContext != null) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          snackMessage(context, noLessonForTodayMessage);
        }
      }
    });
  }

  @override
  void didUpdateWidget(covariant _ScheduleScrollWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.needHighlight) {
        final destination = widget.globalKeys
            .where((key) => key.value == widget.currentWeekDay - 1);
        if (destination.isNotEmpty &&
            destination.first.currentContext != null) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          snackMessage(context, noLessonForTodayMessage);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    final subjectCubit = context.watch<SubjectCubit>();
    final weekTypeCubit = context.watch<WeekTypeCubit>();
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        onRefresh: () async {
          subjectCubit.loadTeacher(
              groupSelectorBloc.selectedGroup.id, weekTypeCubit.weekTypeList!,);
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: WeekScheduleWidget(
            schedule: widget.schedule,
            keys: widget.globalKeys,
            currentWeekDay: widget.currentWeekDay,
            needHighlight: widget.needHighlight,
          ),
        ),
      ),
    );
  }
}

class _ScheduleAppBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const _ScheduleAppBarWidget();

  @override
  State<_ScheduleAppBarWidget> createState() => _ScheduleAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ScheduleAppBarWidgetState extends State<_ScheduleAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final groupBlock = context.watch<MainGroupSelectorBloc>();
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: GestureDetector(
        onTap: () => Navigator.of(context).pushReplacementNamed(selectorRoute),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              groupBlock.selectedGroup.name.isEmpty
                  ? chooseGroupMessage
                  : groupBlock.selectedGroup.name,
              style: groupSelectionTextStyle,
            ),
            const Icon(Icons.search, color: Colors.white, size: 27),
          ],
        ),
      ),
    );
  }
}
