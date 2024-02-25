import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_issuer_request_model.freezed.dart';

@freezed
class TaskIssuerRequestModel with _$TaskIssuerRequestModel{
  const factory TaskIssuerRequestModel({
    required int issuerId,
    required List<int> groupIds,
    required int? disciplineId,
    required int? subjectTypeId,
    required int? academicYear,

  }) = _TaskIssuerRequestModel;
}
