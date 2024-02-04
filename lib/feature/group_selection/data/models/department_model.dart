// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
abstract class DepartmentModel extends HiveObject with _$DepartmentModel {
  @HiveType(typeId: 2, adapterName: 'DepartmentModelAdapter')
  factory DepartmentModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
  }) = _DepartmentModel;

  DepartmentModel._();

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
}
