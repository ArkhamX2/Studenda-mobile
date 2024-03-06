import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'task_student_request_model.freezed.dart';

@freezed
class TaskStudentRequestModel with _$TaskStudentRequestModel{
  const factory TaskStudentRequestModel({
    required List<int> asigneeUserIds,
    required int? disciplineId,
    required int? subjectTypeId,
    required int? academicYear,
    required TokenModel token,
  }) = _TaskStudentRequestModel;
}
