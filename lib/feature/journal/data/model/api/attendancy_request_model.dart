import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/schedule_entity.dart';

part 'attendancy_request_model.freezed.dart';

@freezed
class AttendancyRequestModel with _$AttendancyRequestModel{
  const factory AttendancyRequestModel({
    required AbsenceRequestModel userId,
    required List<ScheduleEntity> subject,
  }) = _AttendancyRequestModel;
}
