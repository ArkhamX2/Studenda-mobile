
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
      await courseBox.putAll(courseList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
  
  
}
