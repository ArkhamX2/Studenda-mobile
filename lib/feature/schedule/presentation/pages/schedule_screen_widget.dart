import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_weighted_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/date_carousel_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/week_schedule_widget.dart';
import 'package:studenda_mobile_student/injection_container.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class ScheduleScreenWidget extends StatefulWidget {
  const ScheduleScreenWidget({super.key});

  @override
  State<ScheduleScreenWidget> createState() => _ScheduleScreenWidgetState();
}

class _ScheduleScreenWidgetState extends State<ScheduleScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 241, 245),
      appBar: _ScheduleAppBarWidget(),
      body: _BodyBuilderWidget(),
    );
  }
}

class _BodyBuilderWidget extends StatelessWidget {
  const _BodyBuilderWidget();

  @override
  Widget build(BuildContext context) {
    //final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    return BlocProvider(
      create: (context) {
        return sl<ScheduleBloc>()
          ..add(
            const ScheduleEvent.loadLocal(
              1,
            ),
          );
      },
      child: const _ScheduleBodyWidget(),
    );
  }
}

class _ScheduleBodyWidget extends StatefulWidget {
  const _ScheduleBodyWidget();

  @override
  State<_ScheduleBodyWidget> createState() => _ScheduleBodyWidgetState();
}

class _ScheduleBodyWidgetState extends State<_ScheduleBodyWidget> {
  List<GlobalObjectKey> keys = [];
  @override
  Widget build(BuildContext context) {
    final scheduleBloc = context.watch<ScheduleBloc>();
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: StudendaWeightedLabelWidget(
              text: scheduleBloc.currentWeekType == null
                  ? ""
                  : "${scheduleBloc.currentWeekType!.name!.toUpperCase()} НЕДЕЛЯ",
              fontSize: 16,
              weight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          _DateCarouselWrapperWidget(
            globalKeys: keys,
            scheduleBloc: scheduleBloc,
            groupId: groupSelectorBloc.selectedGroup.id,
          ),
          const SizedBox(height: 10),
          scheduleBloc.state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            localLoadingFail: (message) {
              scheduleBloc.add(const ScheduleEvent.load(1));
              return Center(
                child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
              );
            },
            fail: (message) {
              return Center(
                child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
              );
            },
            localLoadingSuccess: (schedule) {
              if (schedule.schedule.isEmpty) {
                scheduleBloc.add(const ScheduleEvent.load(1));
              }
              keys = List.generate(
                schedule.schedule.length,
                (index) =>
                    GlobalObjectKey(schedule.schedule[index].weekPosition),
              );
              return Expanded(
                child: _ScheduleScrollWidget(
                  schedule: schedule.schedule,
                  globalKeys: keys,
                  currentWeekDay: getCurrentWeekDay(),
                  needHighlight: getCurrentWeekDays(scheduleBloc.datePointer)
                      .any((element) =>
                          int.parse(element) == DateTime.now().day),
                ),
              );
            },
            success: (schedule) {
              keys = List.generate(
                schedule.schedule.length,
                (index) =>
                    GlobalObjectKey(schedule.schedule[index].weekPosition),
              );

              return Expanded(
                child: _ScheduleScrollWidget(
                  schedule: schedule.schedule,
                  globalKeys: keys,
                  currentWeekDay: getCurrentWeekDay(),
                  needHighlight: getCurrentWeekDays(scheduleBloc.datePointer)
                      .any((element) =>
                          int.parse(element) == DateTime.now().day),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _DateCarouselWrapperWidget extends StatelessWidget {
  final List<GlobalObjectKey> globalKeys;
  final ScheduleBloc scheduleBloc;
  final int groupId;

  const _DateCarouselWrapperWidget({
    required this.globalKeys,
    required this.scheduleBloc,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return DateCarouselWidget(
      dates: getCurrentWeekDays(scheduleBloc.datePointer),
      onDateTap: (int index) {
        final destination = globalKeys.where((key) => key.value == index);
        if (destination.isNotEmpty) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text(
                  'В этот день занятий нет',
                  style: TextStyle(color: mainForegroundColor),
                ),
                backgroundColor: mainButtonBackgroundColor,
              ),
            );
        }
      },
      onPrevTap: () =>
          scheduleBloc.add(ScheduleEvent.subtractWeekType(groupId)),
      onNextTap: () => scheduleBloc.add(ScheduleEvent.addWeekType(groupId)),
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
        if (destination.isNotEmpty) {
          if (destination.first.currentContext != null) {
            Scrollable.ensureVisible(
              destination.first.currentContext!,
              duration: const Duration(seconds: 1),
            );
          }
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
        if (destination.isNotEmpty) {
          if (destination.first.currentContext != null) {
            Scrollable.ensureVisible(
              destination.first.currentContext!,
              duration: const Duration(seconds: 1),
            );
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheduleBloc = context.watch<ScheduleBloc>();
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        onRefresh: () async {
          scheduleBloc.add(const ScheduleEvent.load(1));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: WeekScheduleWidget(
              schedule: widget.schedule,
              keys: widget.globalKeys,
              currentWeekDay: widget.currentWeekDay,
              needHighlight: widget.needHighlight,
            ),
          ),
        ),
      ),
    );
  }
}

class _ScheduleAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const _ScheduleAppBarWidget();

  @override
  Widget build(BuildContext context) {
    final groupBloc = context.watch<MainGroupSelectorBloc>();
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        groupBloc.selectedGroup.name.isEmpty
            ? "Б.ПИН.РИС.2106"
            : groupBloc.selectedGroup.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
