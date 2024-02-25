import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class SetSelectedDepartment extends Usecase<void, DepartmentEntity> {
  final SelectedItemsRepository itemsRepository;

  SetSelectedDepartment({required this.itemsRepository});

  @override
  Future<Either<Failure, void>> call(DepartmentEntity request) async {
    return await itemsRepository.setDepartment(
      DepartmentModel(
        id: request.id,
        name: request.name,
      ),
    );
  }
}
