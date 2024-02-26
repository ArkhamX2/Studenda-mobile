import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';

class TaskLocalDataSource  extends LocalDataSource<List<TaskModel>,void>{
  @override
  Future<void> add(List<TaskModel> remoteLoad) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<TaskModel>> load(void request) async {
    // TODO: implement load
    throw UnimplementedError();
  }
}
