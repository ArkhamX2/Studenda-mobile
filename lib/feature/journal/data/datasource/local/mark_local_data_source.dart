import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';

class MarkLocalDataSource extends LocalDataSource<List<MarkModel>,void> {
  Box<MarkModel> groupListBox;

  MarkLocalDataSource({required this.groupListBox});
  @override
  Future<void> add(List<MarkModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        groupListBox.clear();
        return;
      }

      await updateBox<MarkModel>(
        {for (final item in remoteLoad) item.id: item},
        groupListBox.values.map((e) => e.id).toList(),
        groupListBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<MarkModel>> load(void request) async {
    try {
      return groupListBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
