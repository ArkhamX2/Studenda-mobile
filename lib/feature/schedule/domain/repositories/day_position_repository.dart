import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position/day_position_model.dart';

abstract class DayPositionRepository {
  Future<Either<Failure, List<DayPositionModel>>> load(
    void request, [
    bool remote = true,
  ]);
}
