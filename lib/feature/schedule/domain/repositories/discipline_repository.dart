import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/discipline_model.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';

abstract class DisciplineRepository {
  Future<Either<Failure,List<DisciplineModel>>> load(List<int> request);
}
