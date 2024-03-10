import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';

abstract class TaskRepository {
  Future<Either<Failure, List<TaskModel>>> loadStudent(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]);
  Future<Either<Failure, List<TaskModel>>> loadTeacher(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]);
}
