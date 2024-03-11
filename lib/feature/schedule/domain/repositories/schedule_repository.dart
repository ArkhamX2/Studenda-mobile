import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/api/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/api/teacher_scheduke_request.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';

abstract class ScheduleByWeekTypeRepository {
  Future<Either<Failure, List<SubjectModel>>> loadStudent(
    ScheduleRequestByWeekTypeModel request, 
    List<int> weekTypeIds,[
    bool remote = true,
  ]);

  
  Future<Either<Failure, List<SubjectModel>>> loadTeacher(
    TeacherRequestByWeekTypeModel request, 
    List<int> weekTypeIds,[
    bool remote = true,
  ]);
}
