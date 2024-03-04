// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel extends HiveObject with _$SessionModel {
  @HiveType(typeId: 10, adapterName: 'SessionModelAdapter')
  factory SessionModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'studentId') @HiveField(1) required int studentId,
    @JsonKey(name: 'startedAt') @HiveField(2) required DateTime? startedAt,

  }) = _SessionModel;

  SessionModel._();

  factory SessionModel.fromJson(Map<String,dynamic> json) => _$SessionModelFromJson(json);
}
