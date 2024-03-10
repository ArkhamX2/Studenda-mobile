part of 'subject_type_cubit.dart';

@freezed
class SubjectTypeState with _$SubjectTypeState {
  const factory SubjectTypeState.initial() = _Initial;
  const factory SubjectTypeState.success(List<SubjectTypeModel> subjectTypeList) = _Success;
  const factory SubjectTypeState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory SubjectTypeState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory SubjectTypeState.localLoadingSuccess(List<SubjectTypeModel> subjectTypeList) = _LocalLoadingSuccess;
}
