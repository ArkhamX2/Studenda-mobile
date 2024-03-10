part of 'subject_position_cubit.dart';

@freezed
class SubjectPositionState with _$SubjectPositionState {
  const factory SubjectPositionState.initial() = _Initial;
  const factory SubjectPositionState.success(List<SubjectPositionModel> subjectPositionList) = _Success;
  const factory SubjectPositionState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory SubjectPositionState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory SubjectPositionState.localLoadingSuccess(List<SubjectPositionModel> subjectPositionList) = _LocalLoadingSuccess;
}
