
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'week_type_model.freezed.dart';
part 'week_type_model.g.dart';

@freezed
class WeekTypeModel extends HiveObject with _$WeekTypeModel{

  @HiveType(typeId: 9, adapterName: 'WeekTypeModelAdapter')
  factory WeekTypeModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
    @JsonKey(name: 'index') @HiveField(2) required int index,
  }) = _WeekTypeModel;

  WeekTypeModel._();

  
  factory WeekTypeModel.fromJson(Map<String,dynamic> json) => _$WeekTypeModelFromJson(json);
}
