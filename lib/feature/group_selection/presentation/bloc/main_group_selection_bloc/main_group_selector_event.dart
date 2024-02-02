part of 'main_group_selector_bloc.dart';

@freezed
class MainGroupSelectorEvent with _$MainGroupSelectorEvent {
  const factory MainGroupSelectorEvent.started() = _Started;

  const factory MainGroupSelectorEvent.getGroup() = _getGroup;
  const factory MainGroupSelectorEvent.getCourse() = _getCourse;
  const factory MainGroupSelectorEvent.getDepartment() = _getDepartment;
  

  const factory MainGroupSelectorEvent.setGroup(GroupEntity group) = _setGroup;
  const factory MainGroupSelectorEvent.setCourse(CourseEntity course) =
      _setCourse;
  const factory MainGroupSelectorEvent.setDepartment(
    DepartmentEntity department,
  ) = _setDepartment;
}
