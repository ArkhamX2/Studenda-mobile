import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';

class MarkTypeLocalDataSource  extends LocalDataSource<List<MarkTypeModel>,void>{
  Box<MarkTypeModel> markTypeBox;

  MarkTypeLocalDataSource({required this.markTypeBox});
  @override
  Future<void> add(List<MarkTypeModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        markTypeBox.clear();
        return;
      }

      await updateBox<MarkTypeModel>(
        {for (final item in remoteLoad) item.id: item},
        markTypeBox.values.map((e) => e.id).toList(),
        markTypeBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<MarkTypeModel>> studentLoad(void request) async {
    try {
      return markTypeBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<MarkTypeModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
