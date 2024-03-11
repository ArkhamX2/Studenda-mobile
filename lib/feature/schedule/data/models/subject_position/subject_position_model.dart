// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'subject_position_model.freezed.dart';
part 'subject_position_model.g.dart';

@freezed

class SubjectPositionModel extends HiveObject with _$SubjectPositionModel{
  @HiveType(typeId: 7, adapterName: 'SubjectPositionModelAdapter')
  factory SubjectPositionModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'index') @HiveField(1) required int index,
  }) = _SubjectPositionModel;

  SubjectPositionModel._();
  
  factory SubjectPositionModel.fromJson(Map<String,dynamic> json) => _$SubjectPositionModelFromJson(json);
}
