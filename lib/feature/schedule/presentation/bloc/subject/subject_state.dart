part of 'subject_cubit.dart';

@freezed
class SubjectState with _$SubjectState {
  const factory SubjectState.initial() = SubjectInitial;
  const factory SubjectState.loading() = SubjectLoading;
  const factory SubjectState.localLoadingFail([@Default("Unknown error") String message]) = SubjectLocalLoadingFail;
  const factory SubjectState.localLoadingSuccess(List<SubjectModel> subjectList) = SubjectLocalLoadingSuccess;
  const factory SubjectState.loadingFail([@Default("Unknown error") String message]) = SubjectLoadingFail;
  const factory SubjectState.loadingSuccess(List<SubjectModel> subjectList) = SubjectLoadingSuccess;
}
