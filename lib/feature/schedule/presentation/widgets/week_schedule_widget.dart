import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/presentation/widgets/day_schedule_widget.dart';
import 'package:studenda_mobile/feature/schedule/presentation/widgets/position_values.dart';

class WeekScheduleWidget extends StatelessWidget {
  final List<DayScheduleEntity> schedule;
  final List<GlobalKey<State<StatefulWidget>>> keys;
  const WeekScheduleWidget({
    super.key,
    required this.schedule,
    required this.keys,
  });

  @override
  Widget build(BuildContext context) {
    final weekDays = getCurrentWeekDaysWithMonth();
    return Column(
      children: schedule
          .asMap()
          .map(
            (key, element) => MapEntry(
              key,
              DayScheduleWidget(
                key: keys[key],
                dayTitle: "${weekDays[element.weekPosition]}, ${weekPositionValues[element.weekPosition]}",
                subjects: element.subjects,
                isTitleRequired: true,
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
