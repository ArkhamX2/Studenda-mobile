
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_type_entity.freezed.dart';

@freezed
class WeekTypeEntity with _$WeekTypeEntity{
  const factory WeekTypeEntity({
    required int id,
    required String? name,
    required int index,
  }) = _WeekTypeEntity;
}
