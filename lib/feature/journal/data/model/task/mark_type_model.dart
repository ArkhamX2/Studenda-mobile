// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'mark_type_model.freezed.dart';
part 'mark_type_model.g.dart';

@freezed

class MarkTypeModel extends HiveObject with _$MarkTypeModel {
  @HiveType(typeId: 11, adapterName: 'AssessmentTypeModelAdapter')
  factory MarkTypeModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
    @JsonKey(name: 'minValue') @HiveField(2) required int minValue,
    @JsonKey(name: 'maxValue') @HiveField(3) required int maxValue,
    @JsonKey(name: 'createdAt') @HiveField(4) required DateTime createdAt,
    @JsonKey(name: 'updatedAt') @HiveField(5) required DateTime updatedAt,

  }) = _MarkTypeModel;

  MarkTypeModel._();

  factory MarkTypeModel.fromJson(Map<String,dynamic> json) => _$MarkTypeModelFromJson(json);
}
