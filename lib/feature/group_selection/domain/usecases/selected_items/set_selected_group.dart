import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class SetSelectedGroup extends Usecase<void,GroupEntity>{
  final SelectedItemsRepository itemsRepository;

  SetSelectedGroup({required this.itemsRepository});

  @override
  Future<Either<Failure,void>> call(GroupEntity request) async{
    return await itemsRepository.setGroup(GroupModel(id: request.id, name: request.name, courseId: request.courseId, departmentId: request.departmentId));
  }
}
