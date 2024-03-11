import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/discipline_model.dart';

abstract class DisciplineRepository {
  Future<Either<Failure, List<DisciplineModel>>> load(
    List<int> request, [
    bool remote = true,
  ]);
}
