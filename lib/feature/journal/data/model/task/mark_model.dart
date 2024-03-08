// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'mark_model.freezed.dart';
part 'mark_model.g.dart';

@freezed

class MarkModel extends HiveObject with _$MarkModel {
  @HiveType(typeId: 12, adapterName: 'MarkModelAdapter')
  factory MarkModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'markTypeId') @HiveField(1) required int markTypeId,
    @JsonKey(name: 'value') @HiveField(2) required int value,

  }) = _MarkModel;

  MarkModel._();

  factory MarkModel.fromJson(Map<String,dynamic> json) => _$MarkModelFromJson(json);
}
