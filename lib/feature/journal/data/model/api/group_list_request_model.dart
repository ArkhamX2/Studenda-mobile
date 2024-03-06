import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

part 'group_list_request_model.freezed.dart';

@freezed
class GroupListRequestModel with _$GroupListRequestModel{
  const factory GroupListRequestModel({
    required List<int> groupIds,
    required TokenModel token,
  }) = _GroupListRequestModel;
}
