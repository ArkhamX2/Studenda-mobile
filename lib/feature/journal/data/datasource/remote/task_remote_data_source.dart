import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';

class TaskRemoteDataSource
    extends RemoteDataSource<List<TaskModel>, TaskStudentRequestModel> {
  @override
  Future<List<TaskModel>> load(TaskStudentRequestModel request) {
    // TODO: implement load
    throw UnimplementedError();
  }
}
