part of 'main_group_selector_bloc.dart';

@freezed
class MainGroupSelectorState with _$MainGroupSelectorState {
  const factory MainGroupSelectorState.initial() = _Initial;
  const factory MainGroupSelectorState.loading() = _Loading;
  const factory MainGroupSelectorState.groupSuccess(GroupEntity group) = _GroupSuccess;
  const factory MainGroupSelectorState.courseSuccess(CourseEntity course) = _CourseSuccess;
  const factory MainGroupSelectorState.departmentSuccess(DepartmentEntity department) = _DepartmentSuccess;
  const factory MainGroupSelectorState.fail(String errorMessage) = _Fail;
}
