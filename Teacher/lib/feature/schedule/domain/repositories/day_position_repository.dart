import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/schedule/data/models/day_position_model.dart';

abstract class DayPositionRepository {
  Future<Either<Failure,List<DayPositionModel>>> load(void request);
}
