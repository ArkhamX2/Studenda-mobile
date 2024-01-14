part of 'main_group_selection_bloc.dart';

@freezed
class MainGroupSelectionEvent with _$MainGroupSelectionEvent {
  const factory MainGroupSelectionEvent.started() = _Started;
  const factory MainGroupSelectionEvent.load() = _Load;
  const factory MainGroupSelectionEvent.fail(String errorMessage) = _LoadFail;
  const factory MainGroupSelectionEvent.success() = _LoadSuccess;
  const factory MainGroupSelectionEvent.setGroup(GroupEntity group) = _setGroup;
  const factory MainGroupSelectionEvent.setCourse(CourseEntity course) =
      _setCourse;
  const factory MainGroupSelectionEvent.setDepartment(
    DepartmentEntity department,
  ) = _setDepartment;
}
