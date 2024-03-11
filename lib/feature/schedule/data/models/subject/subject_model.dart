// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed

class SubjectModel extends HiveObject with _$SubjectModel {
  @HiveType(typeId: 6, adapterName: 'SubjectModelAdapter')
  factory SubjectModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'disciplineId') @HiveField(1) required int? disciplineId,
    @JsonKey(name: 'subjectTypeId') @HiveField(2) required int? subjectTypeId,
    @JsonKey(name: 'accountId') @HiveField(3) required int? accountId,
    @JsonKey(name: 'classroom') @HiveField(4) required String? classroom,
    @JsonKey(name: 'subjectPositionId') @HiveField(5) required int? subjectPositionId,
    @JsonKey(name: 'dayPositionId') @HiveField(6) required int? dayPositionId,
    @JsonKey(name: 'groupId') @HiveField(7) required int? groupId,
    @JsonKey(name: 'weekTypeId') @HiveField(8) required int? weekTypeId,

  }) = _SubjectModel;

  SubjectModel._();

  factory SubjectModel.fromJson(Map<String,dynamic> json) => _$SubjectModelFromJson(json);
}
