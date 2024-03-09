// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';

part 'security_response_model.freezed.dart';
part 'security_response_model.g.dart';

@freezed
class SecurityResponseModel with _$SecurityResponseModel{
  const factory SecurityResponseModel({

    @JsonKey(name: 'User') required AccountModel user,
    @JsonKey(name: 'Token') required String token,
  }) = _SecurityResponseModel;
  
  factory SecurityResponseModel.fromJson(Map<String,dynamic> json) => _$SecurityResponseModelFromJson(json);
}
