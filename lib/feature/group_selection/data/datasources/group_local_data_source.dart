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
      final List<int> groups = [];
      groups.addAll(groupBox.values.map((e) => e.id));
      groups.addAll(groupList.map((e) => e.id));
      final ids = {...groups};
      await groupBox.putAll(
        {
          for (final element
              in groupList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<GroupModel>> load(void request) async {
    try {
      return groupBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
