import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_entity.freezed.dart';

@Freezed(toStringOverride: false,)
class DepartmentEntity with _$DepartmentEntity{
  const factory DepartmentEntity({
    required int id,
    required String name,
  }) = _DepartmentEntity;

  const DepartmentEntity._();
  
  @override
  String toString() {
    return name;
  }
}
