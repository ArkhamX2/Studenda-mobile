import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/core/utils/map_absences_to_attendancy_mark_list.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_absences_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';

part 'attendancy_cubit.freezed.dart';
part 'attendancy_state.dart';

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
