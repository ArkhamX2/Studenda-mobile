import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/subject_position_model.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';

abstract class SubjectPositionRepository {
  Future<Either<Failure,List<SubjectPositionModel>>> load(void request);
}
