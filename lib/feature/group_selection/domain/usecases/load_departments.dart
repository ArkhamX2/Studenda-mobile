import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/department_repository.dart';

class LoadDepartments extends Usecase<List<DepartmentModel>,void>{
  final DepartmentRepository departmentRepository;

  LoadDepartments({required this.departmentRepository});

  @override
  Future<Either<Failure,List<DepartmentModel>>> call(void request) async{
    return await departmentRepository.load(request);
  }
}
