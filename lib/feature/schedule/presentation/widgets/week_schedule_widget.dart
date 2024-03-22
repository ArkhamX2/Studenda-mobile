import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/week_type/week_type_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/day_schedule_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/position_values.dart';

class WeekScheduleWidget extends StatelessWidget {
  final List<DayScheduleEntity> schedule;
  final List<GlobalKey<State<StatefulWidget>>> keys;
  final int currentWeekDay;
  final bool needHighlight;
  const WeekScheduleWidget({
    super.key,
    required this.schedule,
    required this.keys,
    required this.currentWeekDay, required this.needHighlight,
  });

  @override
  Widget build(BuildContext context) {
    final weekTypeCubit = context.watch<WeekTypeCubit>();
    final weekDays = getCurrentWeekSixDaysWithMonth(weekTypeCubit.datePointer);
    if(schedule.isEmpty) return const Center(child: StudendaDefaultLabelWidget(text: "Занятий нет", fontSize: 20));
    return Column(
      children: schedule
          .asMap()
          .map(
            (key, element) => MapEntry(
              key,
              DayScheduleWidget(
                key: keys[element.weekPosition],
                dayTitle:
                    "${weekDays[element.weekPosition]}, ${weekPositionValues[element.weekPosition]}",
                subjects: element.subjects,
                isTitleRequired: true,
                highlight: currentWeekDay-1 == element.weekPosition && needHighlight, 
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
