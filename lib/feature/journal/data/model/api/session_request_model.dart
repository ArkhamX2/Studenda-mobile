import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'session_request_model.freezed.dart';

@freezed
class SessionRequestModel with _$SessionRequestModel{
  const factory SessionRequestModel({
    required int subjectId,
    required List<DateTime> dates,
    required TokenModel token,
  }) = _SessionRequestModel;
}

