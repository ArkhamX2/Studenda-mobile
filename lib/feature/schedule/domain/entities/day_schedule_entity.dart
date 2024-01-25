import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';

part 'day_schedule_entity.freezed.dart';

@freezed
class DayScheduleEntity with _$DayScheduleEntity{
  const factory DayScheduleEntity({
    required int weekPosition,
    required List<SubjectEntity> subjects,
  }) = _DayScheduleEntity;
}
