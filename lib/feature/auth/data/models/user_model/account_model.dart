// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel extends HiveObject with _$AccountModel{

  @HiveType(typeId: 0, adapterName: 'AccountModelAdapter')
  factory AccountModel({
    @JsonKey(name: 'id') @HiveField(0) required int id,
    @JsonKey(name: 'groupId') @HiveField(1) required int? groupId,
    @JsonKey(name: 'name') @HiveField(2) required String? name,
    @JsonKey(name: 'surname') @HiveField(3) required String? surname,
    @JsonKey(name: 'patronymic') @HiveField(4) required String? patronymic,
    @JsonKey(name: 'identityId') @HiveField(5) required String? identityId,
  }) = _AccountModel;

  AccountModel._();


  factory AccountModel.fromJson(Map<String,dynamic> json) => _$AccountModelFromJson(json);
}
