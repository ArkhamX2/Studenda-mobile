import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';

abstract class ScheduleRepository {
  Future<Either<Failure,List<SubjectModel>>> load(ScheduleRequestModel request);
}
