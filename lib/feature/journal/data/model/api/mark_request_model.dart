import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'mark_request_model.freezed.dart';

@freezed
class MarkRequestModel with _$MarkRequestModel{
  const factory MarkRequestModel({
    required List<int> markIds,
    required TokenModel token,
  }) = _MarkRequestModel;
}
