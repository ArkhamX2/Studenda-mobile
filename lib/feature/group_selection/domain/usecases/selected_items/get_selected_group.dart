import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class GetSelectedGroup extends Usecase<GroupModel,void>{
  final SelectedItemsRepository itemsRepository;

  GetSelectedGroup({required this.itemsRepository});

  @override
  Future<Either<Failure,GroupModel>> call(void request) async{
    return await itemsRepository.getGroup(request);
  }
}
