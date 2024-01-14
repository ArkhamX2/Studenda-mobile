// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Name') required String name,
  }) = _DepartmentModel;

  
  factory DepartmentModel.fromJson(Map<String,dynamic> json) => _$DepartmentModelFromJson(json);
} 
