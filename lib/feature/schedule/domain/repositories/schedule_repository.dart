import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';

abstract class ScheduleByWeekTypeRepository {
  Future<Either<Failure, List<SubjectModel>>> load(
    ScheduleRequestByWeekTypeModel request, 
    List<int> weekTypeIds,[
    bool remote = true,
  ]);
}
