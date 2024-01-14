
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Name') required String name,
  }) = _CourseModel;

  
  factory CourseModel.fromJson(Map<String,dynamic> json) => _$CourseModelFromJson(json);
} 
