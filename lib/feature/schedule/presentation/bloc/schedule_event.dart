part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.started() = _Started;
  const factory ScheduleEvent.load(int groupId) = _Load;
  const factory ScheduleEvent.loadLocal(int groupId) = _LoadLocal;
  const factory ScheduleEvent.addWeekType(int groupId) = _AddWeekType;
  const factory ScheduleEvent.subtractWeekType(int groupId) = _SubtractWeekType;
  const factory ScheduleEvent.loadTeacher(int accountId) = _LoadTeacher;
  const factory ScheduleEvent.loadTeacherLocal(int accountId) = _LoadTeacherLocal;
  const factory ScheduleEvent.addTeacherWeekType(int groupId) = _AddTeacherWeekType;
  const factory ScheduleEvent.subtractTeacherWeekType(int groupId) = _SubtractTeacherWeekType;
}
