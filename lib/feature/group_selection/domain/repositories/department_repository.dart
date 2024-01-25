import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

abstract class DepartmentRepository {
  Future<Either<Failure,List<DepartmentModel>>> load(void request);
}
