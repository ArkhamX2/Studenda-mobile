part of 'subject_type_cubit.dart';

@freezed
class SubjectTypeState with _$SubjectTypeState {
  const factory SubjectTypeState.initial() = SubjectTypeInitial;
  const factory SubjectTypeState.success(List<SubjectTypeModel> subjectTypeList) = SubjectTypeSuccess;
  const factory SubjectTypeState.fail([@Default("Unknown error") String message]) = SubjectTypeFail;
  const factory SubjectTypeState.localLoadingFail([@Default("Unknown error") String message]) = SubjectTypeLocalLoadingFail;
  const factory SubjectTypeState.localLoadingSuccess(List<SubjectTypeModel> subjectTypeList) = SubjectTypeLocalLoadingSuccess;
}
