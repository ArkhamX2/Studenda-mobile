import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/groups_repository.dart';

class LoadGroups extends Usecase<List<GroupEntity>,void>{
  final GroupsRepository groupRepository;

  LoadGroups({required this.groupRepository});

  @override
  Future<Either<Failure,List<GroupEntity>>> call(void request) async{
    return await groupRepository.load(request);
  }
}
