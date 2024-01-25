import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';

@Freezed(toStringOverride: false,)
class GroupEntity with _$GroupEntity{

  const factory GroupEntity({
    required int id,
    required String name,
  }) = _GroupEntity;

  const GroupEntity._();

  @override
  String toString() {
    return name;
  }
}
