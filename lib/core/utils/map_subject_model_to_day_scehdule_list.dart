import 'package:studenda_mobile/core/common/data/model/discipline_model.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/subject_entity.dart';

List<DayScheduleEntity> mapSubjectModelToDayScehduleList(List<SubjectModel> subjects, List<DisciplineModel> disciplines, List<UserModel> teachers) {
  final Map<int, List<SubjectEntity>> dayScheduleEntityMap = {};

  for (var i = 0; i < subjects.length; i++) {
    if (dayScheduleEntityMap.containsKey(subjects[i].weekPositionId)) {
      dayScheduleEntityMap[subjects[i].weekPositionId]!.add(
        SubjectEntity(
          id: subjects[i].id,
          title: disciplines.firstWhere((element) => element.id == subjects[i].disciplineId).name,
          classroom: subjects[i].classroom,
          teacher: teachers.firstWhere((element) => element.id == subjects[i].userId).name,
          dayTime: subjects[i].subjectPositionId,
        ),
      );
    } else {
      dayScheduleEntityMap[subjects[i].weekPositionId] = [
        SubjectEntity(
          id: subjects[i].id,
          title: disciplines.firstWhere((element) => element.id == subjects[i].disciplineId).name,
          classroom: subjects[i].classroom,
          teacher: teachers.firstWhere((element) => element.id == subjects[i].userId).name,
          dayTime: subjects[i].subjectPositionId,
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
