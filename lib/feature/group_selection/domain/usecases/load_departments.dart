import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/department_repository.dart';

class LoadDepartments extends Usecase<List<DepartmentModel>, void> {
  final DepartmentRepository departmentRepository;

  LoadDepartments({required this.departmentRepository});

  @override
  Future<Either<Failure, List<DepartmentModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await departmentRepository.load(request, remote);
  }
}
