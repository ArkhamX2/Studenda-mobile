import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/subject_entity.dart';

List<DayScheduleEntity> mapSubjectModelToDayScehduleList(List<SubjectModel> r) {
  final Map<int, List<SubjectEntity>> dayScheduleEntityMap = {};

  for (var i = 0; i < r.length; i++) {
    if (dayScheduleEntityMap.containsKey(r[i].weekPositionId)) {
      dayScheduleEntityMap[r[i].weekPositionId]!.add(
        SubjectEntity(
          id: r[i].id,
          title: r[i].discipline.name,
          classroom: r[i].classroom,
          teacher: r[i].user.name,
          dayTime: r[i].subjectPositionId,
        ),
      );
    } else {
      dayScheduleEntityMap[r[i].weekPositionId] = [
        SubjectEntity(
          id: r[i].id,
          title: r[i].discipline.name,
          classroom: r[i].classroom,
          teacher: r[i].user.name,
          dayTime: r[i].subjectPositionId,
        ),
      ];
    }
  }

  final List<DayScheduleEntity> answer = dayScheduleEntityMap.entries.map(
    (entry) {
      return DayScheduleEntity(weekPosition: entry.key, subjects: entry.value);
    },
  ).toList();
  return answer;
}
