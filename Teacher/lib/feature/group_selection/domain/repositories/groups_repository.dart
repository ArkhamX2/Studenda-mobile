import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/group_model.dart';

abstract class GroupRepository {
  Future<Either<Failure,List<GroupModel>>> load(void request);
}
