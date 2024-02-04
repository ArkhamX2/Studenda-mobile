// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'day_position_model.freezed.dart';
part 'day_position_model.g.dart';

@freezed

class DayPositionModel extends HiveObject with _$DayPositionModel{
  
  @HiveType(typeId: 4, adapterName: 'DayPositionModelAdapter')
  factory DayPositionModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'index') @HiveField(1) required int index,
  }) = _DayPositionModel;

  DayPositionModel._();

  factory DayPositionModel.fromJson(Map<String,dynamic> json) => _$DayPositionModelFromJson(json);
}
