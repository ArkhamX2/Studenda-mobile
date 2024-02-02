import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

abstract class GroupLocalDataSource {
  Future<void> add(List<GroupModel> courseList);
  Future<List<GroupModel>> get();
}

class GroupLocalDataSourceImpl implements GroupLocalDataSource {
  Box<GroupModel> groupBox;

  GroupLocalDataSourceImpl({required this.groupBox});

  @override
  Future<List<GroupModel>> get() async {
    try {
      return groupBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<GroupModel> courseList) async {
    try {
      await groupBox.putAll(courseList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
  
  
}
