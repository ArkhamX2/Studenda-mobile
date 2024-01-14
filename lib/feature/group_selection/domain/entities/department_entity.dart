import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_entity.freezed.dart';

@freezed
class DepartmentEntity with _$DepartmentEntity{
  const factory DepartmentEntity({
    required String name,
  }) = _DepartmentEntity;
}