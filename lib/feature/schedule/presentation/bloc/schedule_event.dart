part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.started() = _Started;
  const factory ScheduleEvent.load(int groupId) = _Load;
  const factory ScheduleEvent.changeWeekType(int groupId) = _ChangeWeekType;
}
