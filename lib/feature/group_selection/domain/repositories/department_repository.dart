import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/department_entity.dart';

abstract class DepartmentRepository {
  Future<Either<Failure,List<DepartmentEntity>>> load(void request);
}
