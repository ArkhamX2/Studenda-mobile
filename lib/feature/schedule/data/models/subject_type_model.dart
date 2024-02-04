// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'subject_type_model.freezed.dart';
part 'subject_type_model.g.dart';

@freezed

class SubjectTypeModel extends HiveObject with _$SubjectTypeModel{
  @HiveType(typeId: 8, adapterName: 'SubjectTypeModelAdapter')
  factory SubjectTypeModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
  }) = _SubjectTypeModel;

  SubjectTypeModel._();
  
  factory SubjectTypeModel.fromJson(Map<String,dynamic> json) => _$SubjectTypeModelFromJson(json);
}
