import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group.dart';

abstract class GroupsRepository {
  Future<Either<Failure,List<GroupEntity>>> load(void request);
}
