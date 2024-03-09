import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity{
  const factory TaskEntity({
      required int id,
      required String name,
      required String description,
      required int markId,
      required String endDateName,
    }) = _TaskEntity;
}
