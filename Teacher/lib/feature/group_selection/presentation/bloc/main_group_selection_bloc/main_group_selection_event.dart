part of 'main_group_selection_bloc.dart';

@freezed
class GroupSelectorEvent with _$GroupSelectorEvent {
  const factory GroupSelectorEvent.started() = _Started;
  const factory GroupSelectorEvent.load() = _Load;
  const factory GroupSelectorEvent.fail(String errorMessage) = _LoadFail;
  const factory GroupSelectorEvent.success() = _LoadSuccess;
  const factory GroupSelectorEvent.setGroup(GroupEntity group) = _setGroup;
  const factory GroupSelectorEvent.setCourse(CourseEntity course) =
      _setCourse;
  const factory GroupSelectorEvent.setDepartment(
    DepartmentEntity department,
  ) = _setDepartment;
}
