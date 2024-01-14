part of 'main_group_selection_cubit.dart';

@freezed
class MainGroupSelectionState with _$MainGroupSelectionState {
  const factory MainGroupSelectionState.initial() = _Initial;
  const factory MainGroupSelectionState.loading() = _Loading;
  const factory MainGroupSelectionState.success() = _Success;
  const factory MainGroupSelectionState.fail(String errorMessage) = _Fail;
  const factory MainGroupSelectionState.setGroup(GroupEntity group) = _setGroup;
  const factory MainGroupSelectionState.setCourse(CourseEntity group) = _setCourse;
  const factory MainGroupSelectionState.setDepartment(DepartmentEntity group) = _setDepartment;
  
}
