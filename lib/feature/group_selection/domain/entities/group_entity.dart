import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

part 'group_entity.freezed.dart';

@Freezed(toStringOverride: false,)
class GroupEntity with _$GroupEntity{

  const factory GroupEntity({
    required int id,
    required String name,
    required int? courseId,
    required int? departmentId,
  }) = _GroupEntity;

  const GroupEntity._();

  factory GroupEntity.fromModel(GroupModel model) =>
      GroupEntity(id: model.id, name: model.name, courseId: model.courseId, departmentId: model.departmentId);


  @override
  String toString() {
    return name;
  }
}
