import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/department_model.dart';

abstract class DepartmentRepository {
  Future<Either<Failure,List<DepartmentModel>>> load(void request);
}
