import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task_student_request_model.dart';

abstract class TaskRepository {
  Future<Either<Failure, List<TaskModel>>> load(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]);
}
