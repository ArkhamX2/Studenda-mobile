import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_request_model.freezed.dart';

@freezed
class SessionRequestModel with _$SessionRequestModel{
  const factory SessionRequestModel({
    required int subjectId,
    required List<DateTime> dates
  }) = _SessionRequestModel;
}

