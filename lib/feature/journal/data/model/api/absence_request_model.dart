import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'absence_request_model.freezed.dart';

@freezed
class AbsenceRequestModel with _$AbsenceRequestModel{
  const factory AbsenceRequestModel({
    required int accountId,
    required List<int> sessionIds,
    required TokenModel token,
  }) = _AbsenceRequestModel;
}
