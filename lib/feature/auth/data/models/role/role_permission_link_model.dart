// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/role/permission_model.dart';

part 'role_permission_link_model.freezed.dart';
part 'role_permission_link_model.g.dart';

@freezed
class RolePermissionLinkModel with _$RolePermissionLinkModel{
  const factory RolePermissionLinkModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'roleId') required int roleId,
    @JsonKey(name: 'permissionId') required PermissionModel permissionId,
  }) = _RolePermisisonLinkModel;
  
  factory RolePermissionLinkModel.fromJson(Map<String,dynamic> json) => _$RolePermissionLinkModelFromJson(json);
}
