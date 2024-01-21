part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;
  const factory ScheduleState.loading() = _Loading;
  const factory ScheduleState.success(ScheduleEntity schedule) = _Success;
  const factory ScheduleState.fail([@Default("Unknown error") String message]) = _Fail;
}