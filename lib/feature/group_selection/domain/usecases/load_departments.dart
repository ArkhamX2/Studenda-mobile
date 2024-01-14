import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/department_repository.dart';

class LoadDepartments extends Usecase<List<DepartmentEntity>,void>{
  final DepartmentRepository departmentRepository;

  LoadDepartments({required this.departmentRepository});

  @override
  Future<Either<Failure,List<DepartmentEntity>>> call(void request) async{
    return await departmentRepository.load(request);
  }
}
