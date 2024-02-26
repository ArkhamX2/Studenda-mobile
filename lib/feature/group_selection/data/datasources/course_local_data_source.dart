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
      final List<int> courses = [];
      courses.addAll(courseBox.values.map((e) => e.id));
      courses.addAll(courseList.map((e) => e.id));
      final ids = {...courses};
      await courseBox.putAll(
        {
          for (final element
              in courseList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );

      await courseBox.deleteAll([
        for (final id in courseList.where(
          (element) => !courseList.map((e) => e.id).contains(element.id),
        ))
          id,
      ]);
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
