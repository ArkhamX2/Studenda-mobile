part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.started() = _Started;
  const factory ScheduleEvent.load(int groupId) = _Load;
  const factory ScheduleEvent.loadLocal(int groupId) = _LoadLocal;
  const factory ScheduleEvent.addWeekType(int groupId) = _AddWeekType;
  const factory ScheduleEvent.subtractWeekType(int groupId) = _SubtractWeekType;
  
}
