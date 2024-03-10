part of 'subject_position_cubit.dart';

@freezed
class SubjectPositionState with _$SubjectPositionState {
  const factory SubjectPositionState.initial() = SubjectPositionInitial;
  const factory SubjectPositionState.success(List<SubjectPositionModel> subjectPositionList) = SubjectPositionSuccess;
  const factory SubjectPositionState.fail([@Default("Unknown error") String message]) = SubjectPositionFail;
  const factory SubjectPositionState.localLoadingFail([@Default("Unknown error") String message]) = SubjectPositionLocalLoadingFail;
  const factory SubjectPositionState.localLoadingSuccess(List<SubjectPositionModel> subjectPositionList) = SubjectPositionLocalLoadingSuccess;
}
