// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
abstract class GroupModel extends HiveObject with _$GroupModel {
  
  @HiveType(typeId: 3, adapterName: 'GroupModelAdapter')
  factory GroupModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'name') @HiveField(1) required String name,
  }) = _GroupModel;

  GroupModel._();
  
  factory GroupModel.fromJson(Map<String,dynamic> json) => _$GroupModelFromJson(json);
} 
