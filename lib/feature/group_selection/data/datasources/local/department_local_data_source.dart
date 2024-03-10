import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

class DepartmentLocalDataSource
    extends LocalDataSource<List<DepartmentModel>, void> {
  Box<DepartmentModel> departmentBox;

  DepartmentLocalDataSource({required this.departmentBox});

  @override
  Future<void> add(List<DepartmentModel> departmentList) async {
    try {
      if (departmentList.isEmpty) {
        departmentBox.clear();
        return;
      }
      await updateBox<DepartmentModel>(
        {for (final item in departmentList) item.id: item},
        departmentBox.values.map((e) => e.id).toList(),
        departmentBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<DepartmentModel>> studentLoad(void request) async {
    try {
      return departmentBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<DepartmentModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
