import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';

abstract class AbsenceRepository {
  Future<Either<Failure, List<AbsenceModel>>> load(
    AbsenceRequestModel request, [
    bool remote = true,
  ]);
}
