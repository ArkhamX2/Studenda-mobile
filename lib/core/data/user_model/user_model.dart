// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends HiveObject with _$UserModel{

  @HiveType(typeId: 0, adapterName: 'UserModelAdapter')
  factory UserModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'roleId') @HiveField(1) required int roleId,
    @JsonKey(name: 'name') @HiveField(2) required String name,
  }) = _UserModel;

  UserModel._();


  factory UserModel.fromJson(Map<String,dynamic> json) => _$UserModelFromJson(json);
}
