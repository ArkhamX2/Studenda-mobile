import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';

part 'attendancy_mark_entity.freezed.dart';

@freezed
class AttendancyMartEntity with _$AttendancyMartEntity{
  const factory AttendancyMartEntity({
      required int weekPosition,
      required List<SubjectEntity> subjects,
    }) = _AttendancyMartEntity;
}


