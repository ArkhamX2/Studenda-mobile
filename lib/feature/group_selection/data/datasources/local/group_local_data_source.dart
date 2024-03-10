import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

class GroupLocalDataSource extends LocalDataSource<List<GroupModel>, void> {
  Box<GroupModel> groupBox;

  GroupLocalDataSource({required this.groupBox});

  @override
  Future<void> add(List<GroupModel> groupList) async {
    try {
      if (groupList.isEmpty) {
        groupBox.clear();
        return;
      }

      await updateBox<GroupModel>(
        {for (final item in groupList) item.id: item},
        groupBox.values.map((e) => e.id).toList(),
        groupBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<GroupModel>> studentLoad(void request) async {
    try {
      return groupBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<GroupModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
