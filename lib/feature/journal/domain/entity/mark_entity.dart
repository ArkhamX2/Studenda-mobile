import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_entity.freezed.dart';

@freezed
class MarkEntity with _$MarkEntity{
  const factory MarkEntity({
      required int id,
      required int value,
    }) = _MarkEntity;
}
