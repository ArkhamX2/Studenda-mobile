import 'package:studenda_mobile_student/core/utils/get_week_type_by_shift.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';

List<AttendancyMarkEntity> mapAbsencesToAttendancyMarkList(
  List<AbsenceModel> absenceList,
  List<SessionModel> sessionList,
  List<WeekTypeEntity> weekTypes,
) {
  return sessionList
      .map(
        (e) => AttendancyMarkEntity(
          markDateName: e.startedAt!.toString(),
          weekTypeName: getWeekTypeByShift(weekTypes, e.startedAt!).toString(),
          value: absenceList.map((absence) => absence.sessionId).contains(e.id),
        ),
      )
      .toList();
}
