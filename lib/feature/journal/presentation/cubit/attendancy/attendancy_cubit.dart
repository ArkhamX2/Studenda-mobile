import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_absences_list.dart';

part 'attendancy_state.dart';
part 'attendancy_cubit.freezed.dart';

class AttendancyCubit extends Cubit<AttendancyState> {
  
  final GetAbsenceList loadAbsences;

  List<AttendancyMarkEntity> markList = [];

  AttendancyCubit(this.loadAbsences) : super(const AttendancyState.initial());

  Future<void> load(AbsenceRequestModel request) async {
    final courses = await loadAbsences(request);
    courses.fold(
      (l) => emit(AttendancyState.loadingFail(l.message)),
      (r) {
        markList = mapAbsencesToAttendancyMarkList(r);
        emit(
          AttendancyState.loadingSuccess(
            markList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(AbsenceRequestModel request) async {
    emit(const AttendancyState.loading());
    final courses = await loadAbsences(request, false);
    courses.fold(
      (l) => emit(AttendancyState.localLoadingFail(l.message)),
      (r) {
        markList = mapAbsencesToAttendancyMarkList(r);
        emit(
          AttendancyState.localLoadingSuccess(
            markList,
          ),
        );
      },
    );
  }
}

List<AttendancyMarkEntity> mapAbsencesToAttendancyMarkList(List<AbsenceModel> r) {
  return [];
}
