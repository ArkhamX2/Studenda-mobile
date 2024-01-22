import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/schedule/data/models/discipline_model.dart';

abstract class DisciplineRepository {
  Future<Either<Failure,List<DisciplineModel>>> load(List<int> request);
}
