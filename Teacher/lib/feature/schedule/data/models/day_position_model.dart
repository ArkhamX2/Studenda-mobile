// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_position_model.freezed.dart';
part 'day_position_model.g.dart';

@freezed

class DayPositionModel with _$DayPositionModel{
  const factory DayPositionModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'index') required int index,
  }) = _DayPositionModel;

  
  factory DayPositionModel.fromJson(Map<String,dynamic> json) => _$DayPositionModelFromJson(json);
}
