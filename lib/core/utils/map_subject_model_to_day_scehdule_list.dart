import 'package:studenda_mobile_student/feature/auth/domain/entities/account_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';

List<DayScheduleEntity> mapSubjectModelToDayScheduleList(
  List<SubjectModel> subjects,
  List<DisciplineModel> disciplines,
  List<AccountEntity> teachers,
  List<DayPositionModel> dayPositionList,
  List<SubjectPositionModel> subjectPositionList,
  List<SubjectTypeModel> subjectTypeList,
  List<GroupEntity> groupList,
) {
  if (subjects.isEmpty ||
      disciplines.isEmpty ||
      dayPositionList.isEmpty ||
      subjectPositionList.isEmpty ||
      subjectTypeList.isEmpty) return [];

  final Map<int, List<SubjectEntity>> dayScheduleEntityMap = {};

  subjects.sort((a, b) {
    final comparisonResult = a.dayPositionId!.compareTo(b.dayPositionId!);
    if (comparisonResult != 0) {
      return comparisonResult;
    }
    return a.subjectPositionId!.compareTo(b.subjectPositionId!);
  });

  for (var i = 0; i < subjects.length; i++) {
    final teacher =
        teachers.isNotEmpty? teachers.firstWhere((element) => element.id == subjects[i].accountId) : null;
    if (dayScheduleEntityMap.containsKey(
      dayPositionList
              .firstWhere((element) => element.id == subjects[i].dayPositionId)
              .index -
          1,
    )) {
      dayScheduleEntityMap[dayPositionList
                  .firstWhere(
                    (element) => element.id == subjects[i].dayPositionId,
                  )
                  .index -
              1]!
          .add(
        SubjectEntity(
          id: subjects[i].id,
          title: disciplines
              .firstWhere((element) => element.id == subjects[i].disciplineId)
              .name,
          classroom: subjects[i].classroom ?? "",
          teacher:
              "${teacher != null ? teacher.surname : ""} ${teacher != null ? teacher.name : ""} ${teacher != null ? teacher.patronymic : ""}",
          subjectPosition: subjectPositionList
                  .firstWhere(
                    (element) => element.id == subjects[i].subjectPositionId,
                  )
                  .index -
              1,
          subjectTypeName: subjectTypeList
              .firstWhere((element) => element.id == subjects[i].subjectTypeId)
              .name,
          groups: groupList,
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
          classroom: subjects[i].classroom ?? "",
          teacher:
              "${teacher != null ? teacher.surname : ""} ${teacher != null ? teacher.name : ""} ${teacher != null ? teacher.patronymic : ""}",
          subjectPosition: subjectPositionList
                  .firstWhere(
                    (element) => element.id == subjects[i].subjectPositionId,
                  )
                  .index -
              1,
          subjectTypeName: subjectTypeList
              .firstWhere((element) => element.id == subjects[i].subjectTypeId)
              .name,
          groups: groupList,
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
