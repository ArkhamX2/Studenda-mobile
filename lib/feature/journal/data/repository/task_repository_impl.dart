import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/task_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/task_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource remoteDataSource;
  final TaskLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  TaskRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<TaskModel>>> load(
    TaskStudentRequestModel request, [
    bool remote = true,
  ]) async {
    return await loadStudentData<TaskLocalDataSource, TaskRemoteDataSource,
        List<TaskModel>, TaskStudentRequestModel>(
      localDataSource,
      remoteDataSource,
      remote,
      request,
      networkInfo,
    );

  }
}
