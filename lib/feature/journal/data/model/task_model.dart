// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed

class TaskModel extends HiveObject with _$TaskModel {
  @HiveType(typeId: 13, adapterName: 'TaskModelAdapter')
  factory TaskModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'disciplineId') @HiveField(1) required int disciplineId,
    @JsonKey(name: 'subjectTypeId') @HiveField(2) required int subjectTypeId,
    @JsonKey(name: 'teacherId') @HiveField(3) required int teacherId,
    @JsonKey(name: 'studentId') @HiveField(4) required int studentId,
    @JsonKey(name: 'name') @HiveField(5) required int name,
    @JsonKey(name: 'description') @HiveField(6) required int description,
    @JsonKey(name: 'createdAt') @HiveField(7) required DateTime createdAt,
    @JsonKey(name: 'updatedAt') @HiveField(8) required DateTime updatedAt,

  }) = _TaskModel;

  TaskModel._();

  factory TaskModel.fromJson(Map<String,dynamic> json) => _$TaskModelFromJson(json);
}
