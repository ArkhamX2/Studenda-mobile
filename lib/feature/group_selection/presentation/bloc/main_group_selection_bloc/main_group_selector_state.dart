part of 'main_group_selector_bloc.dart';

@freezed
class MainGroupSelectorState with _$MainGroupSelectorState {
  const factory MainGroupSelectorState.initial() = _Initial;
  const factory MainGroupSelectorState.loading() = _Loading;
  const factory MainGroupSelectorState.groupSucces(GroupEntity group) = _GroupSucces;
  const factory MainGroupSelectorState.courseSucces(CourseEntity course) = _CourseSucces;
  const factory MainGroupSelectorState.departmentSucces(DepartmentEntity department) = _DepartmentSucces;
  const factory MainGroupSelectorState.fail(String errorMessage) = _Fail;
}
