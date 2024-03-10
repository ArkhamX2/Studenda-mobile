import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';

class TaskLocalDataSource extends LocalDataSource<List<TaskModel>, void> {
  Box<TaskModel> markTypeBox;

  TaskLocalDataSource({required this.markTypeBox});
  @override
  Future<void> add(List<TaskModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        markTypeBox.clear();
        return;
      }

      await updateBox<TaskModel>(
        {for (final item in remoteLoad) item.id: item},
        markTypeBox.values.map((e) => e.id).toList(),
        markTypeBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<TaskModel>> studentLoad(void request) async {
    try {
      return markTypeBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<TaskModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
