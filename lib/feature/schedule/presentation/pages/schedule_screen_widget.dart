import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile/core/common/presentation/bloc/common_bloc.dart';
import 'package:studenda_mobile/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selection_bloc.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:studenda_mobile/feature/schedule/presentation/widgets/date_carousel_widget.dart';
import 'package:studenda_mobile/feature/schedule/presentation/widgets/week_schedule_widget.dart';
import 'package:studenda_mobile/injection_container.dart';
import 'package:studenda_mobile/resources/colors.dart';

class ScheduleScreenWidget extends StatefulWidget {
  const ScheduleScreenWidget({super.key});

  @override
  State<ScheduleScreenWidget> createState() => _ScheduleScreenWidgetState();
}

class _ScheduleScreenWidgetState extends State<ScheduleScreenWidget> {
//TODO: сделать чтобы кнопки влево вправо меняли неделю
//TODO: сделать чтобы вместо "главная бросало на выбор группы"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: const _ScheduleAppBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<GroupSelectorBloc>(
            create: (context) => sl<GroupSelectorBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<CommonBloc>(),
          ),
        ],
        child: const _BodyBuilderWidget(),
      ),
    );
  }
}

class _BodyBuilderWidget extends StatelessWidget {
  const _BodyBuilderWidget();

  @override
  Widget build(BuildContext context) {
    final groupSelectorBloc = context.watch<GroupSelectorBloc>();
    final commonBloc = context.watch<CommonBloc>();
    return BlocProvider(
      create: (context) => sl<ScheduleBloc>()
        ..add(ScheduleEvent.load(groupSelectorBloc.selectedGroup.id,commonBloc.dayPositionList,commonBloc.subjectPositionList)),
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

    return scheduleBloc.state.when(
      initial: () => const Center(child: CircularProgressIndicator()),
      loading: () => const Center(child: CircularProgressIndicator()),
      fail: (message) => Center(
        child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
      ),
      success: (schedule) {
        keys = List.generate(
          schedule.schedule.length,
          (index) => GlobalObjectKey(schedule.schedule[index].weekPosition),
        );
        return Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 17),
              _DateCarouselWrapperWidget(
                globalKeys: keys,
                scheduleBloc: scheduleBloc,
                weekType: schedule.weekType,
                weekDays: schedule.weekDays,
              ),
              const SizedBox(height: 10),
              _ScheduleScrollWidget(
                schedule: schedule.schedule,
                globalKeys: keys,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DateCarouselWrapperWidget extends StatelessWidget {
  final List<GlobalObjectKey> globalKeys;
  final WeekTypeEntity weekType;
  final List<String> weekDays;
  final ScheduleBloc scheduleBloc;

  const _DateCarouselWrapperWidget({
    required this.globalKeys,
    required this.weekType,
    required this.weekDays,
    required this.scheduleBloc,
  });

  @override
  Widget build(BuildContext context) {
    return DateCarouselWidget(
      dates: weekDays,
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
      onPrevTap: () => scheduleBloc.add(const ScheduleEvent.changeWeekType()),
      onNextTap: () => scheduleBloc.add(const ScheduleEvent.changeWeekType()),
    );
  }
}

class _ScheduleScrollWidget extends StatelessWidget {
  final List<GlobalObjectKey> globalKeys;

  final List<DayScheduleEntity> schedule;

  const _ScheduleScrollWidget({
    required this.globalKeys,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: WeekScheduleWidget(
          schedule: schedule,
          keys: globalKeys,
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
    return BlocProvider(
      create: (context) => sl<GroupSelectorBloc>(),
      child: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          //TODO: Сделать чтобы отображалась текущая выбранная группа
          'Главная',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () => {Navigator.of(context).pushNamed('/notification')},
            icon: const Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
