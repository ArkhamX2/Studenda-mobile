import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';

part 'mark_entity.freezed.dart';

@freezed
class MarkEntity with _$MarkEntity{
  const factory MarkEntity({
      required int id,
      required int value,
    }) = _MarkEntity;

  factory MarkEntity.fromModel(MarkModel model) =>
      MarkEntity(id: model.id,value: model.value);
}
