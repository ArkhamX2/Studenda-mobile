import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_position_model.dart';

abstract class SubjectPositionRepository {
  Future<Either<Failure,List<SubjectPositionModel>>> load(void request);
}
