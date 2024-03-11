
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type/week_type_model.dart';

part 'week_type_entity.freezed.dart';

@freezed
class WeekTypeEntity with _$WeekTypeEntity{
  const factory WeekTypeEntity({
    required int id,
    required String? name,
    required int index,
  }) = _WeekTypeEntity;

  factory WeekTypeEntity.fromModel(WeekTypeModel model) =>
      WeekTypeEntity(id: model.id, name: model.name,index: model.index);
  
}
