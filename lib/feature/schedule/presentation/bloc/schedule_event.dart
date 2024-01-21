part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.started() = _Started;
  const factory ScheduleEvent.load(int groupId, List<DayPositionModel> dayPositionList, List<SubjectPositionModel> subjectPositionList) = _Load;
  const factory ScheduleEvent.changeWeekType() = _ChangeWeekType;
}
