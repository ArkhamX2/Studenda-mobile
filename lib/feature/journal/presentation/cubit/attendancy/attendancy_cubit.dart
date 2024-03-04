import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_absences_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';

part 'attendancy_state.dart';
part 'attendancy_cubit.freezed.dart';

class AttendancyCubit extends Cubit<AttendancyState> {
  final GetAbsenceList loadAbsences;

  List<AttendancyMarkEntity> markList = [];

  AttendancyCubit(this.loadAbsences) : super(const AttendancyState.initial());

  Future<void> load(
    AbsenceRequestModel request,
    List<SessionModel> sessionList,
    List<WeekTypeEntity> weekTypes,
  ) async {
    final courses = await loadAbsences(request);
    courses.fold(
      (l) => emit(AttendancyState.loadingFail(l.message)),
      (r) {
        markList = mapAbsencesToAttendancyMarkList(r, sessionList, weekTypes);
        emit(
          AttendancyState.loadingSuccess(
            markList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(
    AbsenceRequestModel request,
    List<SessionModel> sessionList,
    List<WeekTypeEntity> weekTypes,
  ) async {
    emit(const AttendancyState.loading());
    final courses = await loadAbsences(request, false);
    courses.fold(
      (l) => emit(AttendancyState.localLoadingFail(l.message)),
      (r) {
        markList = mapAbsencesToAttendancyMarkList(r, sessionList, weekTypes);
        emit(
          AttendancyState.localLoadingSuccess(
            markList,
          ),
        );
      },
    );
  }
}

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
