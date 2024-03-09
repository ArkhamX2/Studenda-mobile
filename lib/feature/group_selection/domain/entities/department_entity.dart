import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

part 'department_entity.freezed.dart';

@Freezed(
  toStringOverride: false,
)
class DepartmentEntity with _$DepartmentEntity {
  const factory DepartmentEntity({
    required int id,
    required String name,
  }) = _DepartmentEntity;

  const DepartmentEntity._();

  factory DepartmentEntity.fromModel(DepartmentModel model) => DepartmentEntity(
        id: model.id,
        name: model.name,
      );

  @override
  String toString() {
    return name;
  }
}
