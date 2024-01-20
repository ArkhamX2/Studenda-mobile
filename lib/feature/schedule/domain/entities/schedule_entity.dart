import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';

part 'schedule_entity.freezed.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity{
  const factory ScheduleEntity({
    required List<String> weekDays,
    required WeekTypeEntity weekType,
    required List<DayScheduleEntity> schedule,
  }) = _ScheduleEntity;
}
