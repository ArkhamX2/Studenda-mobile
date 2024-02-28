import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';

class CourseLocalDataSource extends LocalDataSource<List<CourseModel>, void> {
  Box<CourseModel> courseBox;

  CourseLocalDataSource({required this.courseBox});

  @override
  Future<void> add(List<CourseModel> courseList) async {
    try {
      if (courseList.isEmpty) {
        courseBox.clear();
        return;
      }

      await updateBox<CourseModel>(
        {for (final item in courseList) item.id: item},
        courseBox.values.map((e) => e.id).toList(),
        courseBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<CourseModel>> load(void request) async {
    try {
      return courseBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
