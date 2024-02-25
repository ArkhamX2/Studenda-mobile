import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/task_repository.dart';

class GetTaskList extends Usecase<List<TaskModel>, TaskStudentRequestModel> {
  final TaskRepository taskRepository;

  GetTaskList({required this.taskRepository});

  @override
  Future<Either<Failure, List<TaskModel>>> call(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]) async {
    return await taskRepository.load(request, remote);
  }
}
