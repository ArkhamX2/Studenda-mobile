import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/constant_values/presentation_const_values.dart';
import 'package:studenda_mobile_student/core/constant_values/routes.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_weighted_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/date_carousel_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/group_selector_text_style.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/week_schedule_widget.dart';
import 'package:studenda_mobile_student/injection_container.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class ScheduleScreenPage extends StatefulWidget {
  const ScheduleScreenPage({super.key});

  @override
  State<ScheduleScreenPage> createState() => _ScheduleScreenPageState();
}

class _ScheduleScreenPageState extends State<ScheduleScreenPage> {
  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    return BlocProvider<ScheduleBloc>(
      create: (context) {
        sl<MainGroupSelectorBloc>()
            .add(const MainGroupSelectorEvent.getGroup());
        return sl<ScheduleBloc>()
          ..add(
            ScheduleEvent.loadLocal(
              groupSelectorBloc.selectedGroup.id,
            ),
          );
      },
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
    final scheduleBloc = context.watch<ScheduleBloc>();
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: StudendaWeightedLabelWidget(
              text: scheduleBloc.currentWeekType!.name! == "name"
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
          Expanded(
            child: scheduleBloc.state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              localLoadingFail: (message) {
                scheduleBloc.add(
                  ScheduleEvent.load(
                    groupSelectorBloc.selectedGroup.id,
                  ),
                );
                return Center(
                  child:
                      StudendaDefaultLabelWidget(text: message, fontSize: 18),
                );
              },
              fail: (message) {
                return Center(
                  child:
                      StudendaDefaultLabelWidget(text: message, fontSize: 18),
                );
              },
              localLoadingSuccess: (schedule) {
                if (schedule.schedule.isEmpty) {
                  scheduleBloc.add(
                    ScheduleEvent.load(
                      groupSelectorBloc.selectedGroup.id,
                    ),
                  );
                }
                return _ScheduleScrollWidget(
                  schedule: schedule.schedule,
                  globalKeys: keys,
                  currentWeekDay: getCurrentWeekDay(),
                  needHighlight:
                      getCurrentWeekDaysWithMonth(scheduleBloc.datePointer).any(
                    (element) =>
                        element ==
                        "${DateTime.now().day} ${monthNames[DateTime.now().month - 1]}",
                  ),
                );
              },
              success: (schedule) {
                return Expanded(
                  child: _ScheduleScrollWidget(
                    schedule: schedule.schedule,
                    globalKeys: keys,
                    currentWeekDay: getCurrentWeekDay(),
                    needHighlight:
                        getCurrentWeekDays(scheduleBloc.datePointer).any(
                      (element) => int.parse(element) == DateTime.now().day,
                    ),
                  ),
                );
              },
            ),
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
      onDateTap: (int index) {
        final destination = globalKeys.where((key) => key.value == index);
        if (destination.isNotEmpty &&
            destination.first.currentContext != null) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          noLessonsTodayMessage(context, noLessonOnChosenDay);
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
        if (destination.isNotEmpty &&
            destination.first.currentContext != null) {
          Scrollable.ensureVisible(
            destination.first.currentContext!,
            duration: const Duration(seconds: 1),
          );
        } else {
          noLessonsTodayMessage(context, noLessonForTodayMessage);
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
          noLessonsTodayMessage(context, noLessonForTodayMessage);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<MainGroupSelectorBloc>();
    final scheduleBloc = context.watch<ScheduleBloc>();
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        onRefresh: () async {
          scheduleBloc
              .add(ScheduleEvent.load(groupSelectorBloc.selectedGroup.id));
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

void noLessonsTodayMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: mainForegroundColor),
        ),
        backgroundColor: mainButtonBackgroundColor,
      ),
    );
}
