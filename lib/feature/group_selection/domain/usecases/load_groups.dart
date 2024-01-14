import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/groups_repository.dart';

class LoadGroups extends Usecase<List<GroupModel>,void>{
  final GroupRepository groupRepository;

  LoadGroups({required this.groupRepository});

  @override
  Future<Either<Failure,List<GroupModel>>> call(void request) async{
    return await groupRepository.load(request);
  }
}