part of 'session_cubit.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;
  const factory SessionState.loading() = _Loading;
  const factory SessionState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory SessionState.localLoadingSuccess(List<SessionModel> attendancyMarks) = _LocalLoadingSuccess;
  const factory SessionState.loadingFail([@Default("Unknown error") String message]) = _LoadingFail;
  const factory SessionState.loadingSuccess(List<SessionModel> attendancyMarks) = _LoadingSuccess;
}
