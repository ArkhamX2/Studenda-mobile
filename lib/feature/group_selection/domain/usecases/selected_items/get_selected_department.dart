import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class GetSelectedDepartment extends Usecase<DepartmentModel,void>{
  final SelectedItemsRepository itemsRepository;

  GetSelectedDepartment({required this.itemsRepository});

  @override
  Future<Either<Failure,DepartmentModel>> call(void request) async{
    return await itemsRepository.getDepartment(request);
  }
}
