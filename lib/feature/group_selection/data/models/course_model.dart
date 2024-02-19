// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel extends HiveObject with _$CourseModel {
  @HiveType(typeId: 1, adapterName: 'CourseModelAdapter')
  factory CourseModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String? name,
    @JsonKey(name: 'grade') @HiveField(2) required int grade,
  }) = _CourseModel;

  CourseModel._();
  
  factory CourseModel.fromJson(Map<String,dynamic> json) => _$CourseModelFromJson(json);
} 
