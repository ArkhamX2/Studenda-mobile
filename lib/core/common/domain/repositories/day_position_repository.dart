import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/day_position_model.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';

abstract class DayPositionRepository {
  Future<Either<Failure,List<DayPositionModel>>> load(void request);
}