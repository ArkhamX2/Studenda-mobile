import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/task_repository.dart';

class GetStudentTaskList extends Usecase<List<TaskModel>, TaskStudentRequestModel> {
  final TaskRepository taskRepository;

  GetStudentTaskList({required this.taskRepository});

  @override
  Future<Either<Failure, List<TaskModel>>> call(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]) async {
    return await taskRepository.loadStudent(request, remote);
  }
}
