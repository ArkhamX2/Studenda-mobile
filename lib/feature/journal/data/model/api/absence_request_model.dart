import 'package:freezed_annotation/freezed_annotation.dart';

part 'absence_request_model.freezed.dart';

@freezed
class AbsenceRequestModel with _$AbsenceRequestModel{
  const factory AbsenceRequestModel({
    required int accountId,
    required List<int> sessionIds,
  }) = _AbsenceRequestModel;
}
