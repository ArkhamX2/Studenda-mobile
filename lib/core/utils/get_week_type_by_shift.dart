import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';

WeekTypeEntity getWeekTypeByShift(
  List<WeekTypeEntity> weekTypes,
  DateTime targetDate,
) {
  var currentWeekType = weekTypes.first;
  final tmpDate = DateTime.now();
  while (tmpDate.isAfter(targetDate)) {
    tmpDate.subtract(const Duration(days: 7));
    currentWeekType =
        currentWeekType == weekTypes.first ? weekTypes[1] : weekTypes.first;
  }
  if (tmpDate.weekday == 0) {
    currentWeekType =
        currentWeekType == weekTypes.first ? weekTypes[1] : weekTypes.first;
  }
  return currentWeekType;
}
