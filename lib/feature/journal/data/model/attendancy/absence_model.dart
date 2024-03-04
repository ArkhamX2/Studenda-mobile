// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'absence_model.freezed.dart';
part 'absence_model.g.dart';

@freezed

class AbsenceModel extends HiveObject with _$AbsenceModel {
  @HiveType(typeId: 10, adapterName: 'AbsenceModelAdapter')
  factory AbsenceModel({  
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'accountId') @HiveField(1) required int accountId,
    @JsonKey(name: 'sessionId') @HiveField(2) required int sessionId,

  }) = _AbsenceModel;

  AbsenceModel._();

  factory AbsenceModel.fromJson(Map<String,dynamic> json) => _$AbsenceModelFromJson(json);
}
