import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'task_issuer_request_model.freezed.dart';

@freezed
class TaskIssuerRequestModel with _$TaskIssuerRequestModel{
  const factory TaskIssuerRequestModel({
    required int issuerId,
    required List<int> groupIds,
    required int? disciplineId,
    required int? subjectTypeId,
    required int? academicYear,
    required TokenModel token,
  }) = _TaskIssuerRequestModel;
}
