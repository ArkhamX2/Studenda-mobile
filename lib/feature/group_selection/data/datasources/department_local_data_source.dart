import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

abstract class DepartmentLocalDataSource {
  Future<void> add(List<DepartmentModel> courseList);
  Future<List<DepartmentModel>> get();
}

class DepartmentLocalDataSourceImpl implements DepartmentLocalDataSource {
  Box<DepartmentModel> deaprtmentBox;

  DepartmentLocalDataSourceImpl({required this.deaprtmentBox});

  @override
  Future<List<DepartmentModel>> get() async {
    try {
      return deaprtmentBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<DepartmentModel> courseList) async {
    try {
      await deaprtmentBox.putAll(courseList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
  
  
}
