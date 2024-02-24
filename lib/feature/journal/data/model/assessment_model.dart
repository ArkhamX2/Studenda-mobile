// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'assessment_model.freezed.dart';
part 'assessment_model.g.dart';

@freezed

class AssessmentModel extends HiveObject with _$AssessmentModel {
  @HiveType(typeId: 12, adapterName: 'AssessmentModelAdapter')
  factory AssessmentModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'assessmentTypeId') @HiveField(1) required int assessmentTypeId,
    @JsonKey(name: 'taskId') @HiveField(2) required int taskId,
    @JsonKey(name: 'value') @HiveField(3) required int value,
    @JsonKey(name: 'createdAt') @HiveField(4) required DateTime createdAt,
    @JsonKey(name: 'updatedAt') @HiveField(5) required DateTime updatedAt,

  }) = _AssessmentModel;

  AssessmentModel._();

  factory AssessmentModel.fromJson(Map<String,dynamic> json) => _$AssessmentModelFromJson(json);
}
