import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';

@freezed
class GroupEntity with _$GroupEntity{
  const factory GroupEntity({
    required int id,
    required String name,
  }) = _GroupEntity;
}
