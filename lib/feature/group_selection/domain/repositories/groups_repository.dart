import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

abstract class GroupRepository {
  Future<Either<Failure, List<GroupModel>>> load(
    void request, [
    bool remote = true,
  ]);
}
