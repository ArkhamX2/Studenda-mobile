part of 'subject_cubit.dart';

@freezed
class SubjectState with _$SubjectState {
  const factory SubjectState.initial() = _Initial;
  const factory SubjectState.loading() = _Loading;
  const factory SubjectState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory SubjectState.localLoadingSuccess(List<SubjectModel> subjectList) = _LocalLoadingSuccess;
  const factory SubjectState.loadingFail([@Default("Unknown error") String message]) = _LoadingFail;
  const factory SubjectState.loadingSuccess(List<SubjectModel> subjectList) = _LoadingSuccess;
}
