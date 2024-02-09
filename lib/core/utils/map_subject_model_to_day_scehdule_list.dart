
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';

List<DayScheduleEntity> mapSubjectModelToDayScehduleList(
  List<SubjectModel> subjects,
  List<DisciplineModel> disciplines,
  List<UserModel> teachers,
  List<DayPositionModel> dayPositionList,
  List<SubjectPositionModel> subjectPositionList,
  List<SubjectTypeModel> subjectTypeList,
) {
  final Map<int, List<SubjectEntity>> dayScheduleEntityMap = {};

  subjects.sort((a, b) => a.dayPositionId.compareTo(b.dayPositionId));

  for (var i = 0; i < subjects.length; i++) {
    if (dayScheduleEntityMap.containsKey(
      dayPositionList
          .firstWhere((element) => element.id == subjects[i].dayPositionId)
          .index - 1,
    )) {
      dayScheduleEntityMap[dayPositionList
                  .firstWhere(
                      (element) => element.id == subjects[i].dayPositionId,)
                  .index -
              1]!
          .add(
        SubjectEntity(
          id: subjects[i].id,
          title: disciplines
              .firstWhere((element) => element.id == subjects[i].disciplineId)
              .name,
          classroom: subjects[i].classroom,
          teacher: teachers
              .firstWhere((element) => element.id == subjects[i].userId)
              .name,
          subjectPosition: subjectPositionList
                  .firstWhere(
                    (element) => element.id == subjects[i].subjectPositionId,
                  )
                  .index -
              1,
          subjectTypeName: subjectTypeList
              .firstWhere((element) => element.id == subjects[i].subjectTypeId)
              .name,
        ),
      );
    } else {
      dayScheduleEntityMap[dayPositionList
              .firstWhere((element) => element.id == subjects[i].dayPositionId)
              .index -
          1] = [
        SubjectEntity(
          id: subjects[i].id,
          title: disciplines
              .firstWhere((element) => element.id == subjects[i].disciplineId)
              .name,
          classroom: subjects[i].classroom,
          teacher: teachers
              .firstWhere((element) => element.id == subjects[i].userId)
              .name,
          subjectPosition: subjectPositionList
                  .firstWhere(
                    (element) => element.id == subjects[i].subjectPositionId,
                  )
                  .index -
              1,
          subjectTypeName: subjectTypeList
              .firstWhere((element) => element.id == subjects[i].subjectTypeId)
              .name,
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
