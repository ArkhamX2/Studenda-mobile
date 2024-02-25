import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

class DepartmentLocalDataSource extends LocalDataSource<List<DepartmentModel>,void> {
  Box<DepartmentModel> deaprtmentBox;

  DepartmentLocalDataSource({required this.deaprtmentBox});

  @override
  Future<void> add(List<DepartmentModel> departmentList) async {
    try {
      final List<int> departments = [];
      departments.addAll(deaprtmentBox.values.map((e) => e.id));
      departments.addAll(departmentList.map((e) => e.id));
      final ids = {...departments};
      await deaprtmentBox.putAll(
        {
          for (final element
              in departmentList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<DepartmentModel>> load(void request) async {
    try {
      return deaprtmentBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
