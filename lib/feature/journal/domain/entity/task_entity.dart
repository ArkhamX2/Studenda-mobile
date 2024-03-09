import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required int id,
    required String name,
    required String description,
    required int markId,
    required String endDateName,
  }) = _TaskEntity;

  factory TaskEntity.fromModel(TaskModel model) => TaskEntity(
        id: model.id,
        name: model.name,
        description: model.description,
        endDateName: model.endedAt.toString(),
        markId: model.markId,
      );
}
