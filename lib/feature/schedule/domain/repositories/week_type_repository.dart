import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/schedule/data/models/week_type_model.dart';

abstract class WeekTypeRepository {
  Future<Either<Failure,WeekTypeModel>> load(void request);
}
