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
    @JsonKey(name: 'issuerAccountId') @HiveField(3) required int issuerAccountId,
    @JsonKey(name: 'asigneeAccountId') @HiveField(4) required int asigneeAccountId,
    @JsonKey(name: 'markId') @HiveField(5) required int markId,
    @JsonKey(name: 'name') @HiveField(6) required String name,
    @JsonKey(name: 'description') @HiveField(7) required String description,
    @JsonKey(name: 'startedAt') @HiveField(8) required DateTime startedAt,
    @JsonKey(name: 'endedAt') @HiveField(9) required DateTime? endedAt,

  }) = _TaskModel;

  TaskModel._();

  factory TaskModel.fromJson(Map<String,dynamic> json) => _$TaskModelFromJson(json);
}
