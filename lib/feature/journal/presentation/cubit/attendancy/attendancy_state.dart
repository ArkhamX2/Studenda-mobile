part of 'attendancy_cubit.dart';

@freezed
class AttendancyState with _$AttendancyState {
  const factory AttendancyState.initial() = _Initial;
  const factory AttendancyState.loading() = _Loading;
  const factory AttendancyState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory AttendancyState.localLoadingSuccess(List<AttendancyMarkEntity> attendancyMarks) = _LocalLoadingSuccess;
  const factory AttendancyState.loadingFail([@Default("Unknown error") String message]) = _LoadingFail;
  const factory AttendancyState.loadingSuccess(List<AttendancyMarkEntity> attendancyMarks) = _LoadingSuccess;
}
