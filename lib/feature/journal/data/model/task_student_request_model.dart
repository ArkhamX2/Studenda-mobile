import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_student_request_model.freezed.dart';

@freezed
class TaskStudentRequestModel with _$TaskStudentRequestModel{
  const factory TaskStudentRequestModel({
    required List<int> asigneeUserIds,
    required int? disciplineId,
    required int? subjectTypeId,
    required int? academicYear,

  }) = _TaskStudentRequestModel;
}
