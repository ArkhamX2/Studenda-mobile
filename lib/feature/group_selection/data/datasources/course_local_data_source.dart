
import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';

abstract class CourseLocalDataSource {
  Future<void> add(List<CourseModel> courseList);
  Future<List<CourseModel>> get();
}

class CourseLocalDataSourceImpl implements CourseLocalDataSource {
  Box<CourseModel> courseBox;

  CourseLocalDataSourceImpl({required this.courseBox});

  @override
  Future<List<CourseModel>> get() async {
    try {
      return courseBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

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
    } catch (e) {
      throw CacheException();
    }
  }
  
  
}
