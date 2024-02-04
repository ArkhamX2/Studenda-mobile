// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'discipline_model.freezed.dart';
part 'discipline_model.g.dart';

@freezed

class DisciplineModel extends HiveObject with _$DisciplineModel{
  @HiveType(typeId: 5, adapterName: 'DisciplineModelAdapter')
  factory DisciplineModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
  }) = _DisciplineModel;

  DisciplineModel._();
  
  factory DisciplineModel.fromJson(Map<String,dynamic> json) => _$DisciplineModelFromJson(json);
}
