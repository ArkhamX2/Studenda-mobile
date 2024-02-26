import 'package:freezed_annotation/freezed_annotation.dart';

part 'absence_request_model.freezed.dart';

@freezed
class AbsenceRequestModel with _$AbsenceRequestModel{
  const factory AbsenceRequestModel({
    required int userId,
    required List<DateTime> dates,
  }) = _AbsenceRequestModel;
}
