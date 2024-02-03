import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

abstract class SelectedItemsDataSource {
  Future<void> setDepartment(DepartmentModel departmentModel);
  Future<void> setCourse(CourseModel courseModel);
  Future<void> setGroup(GroupModel groupModel);
  Future<DepartmentModel> getDepartment();
  Future<CourseModel> getCourse();
  Future<GroupModel> getGroup();
}

class SelectedItemsDataSourceImpl implements SelectedItemsDataSource {
  SharedPreferences prefs;

  SelectedItemsDataSourceImpl({required this.prefs});

  @override
  Future<DepartmentModel> getDepartment() async {
    try {
      final result = prefs.getString('department');
      if (result != null) {
        final department = DepartmentModel.fromJson(
          json.decode(result) as Map<String, dynamic>,
        );
        return department;
      } else {
        throw CacheException();
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<CourseModel> getCourse() async {
    try {
      final result = prefs.getString('course');
      if (result != null) {
        final course = CourseModel.fromJson(
          json.decode(result) as Map<String, dynamic>,
        );
        return course;
      } else {
        throw CacheException();
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<GroupModel> getGroup() async {
    try {
      final result = prefs.getString('department');
      if (result != null) {
        final group = GroupModel.fromJson(
          json.decode(result) as Map<String, dynamic>,
        );
        return group;
      } else {
        throw CacheException();
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> setDepartment(DepartmentModel departmentModel) async {
    try {
      prefs.setString(
        'department',
        json.encode(
          departmentModel.toJson(),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> setCourse(CourseModel courseModel) async {
    try {
      prefs.setString(
        'course',
        json.encode(
          courseModel.toJson(),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> setGroup(GroupModel groupModel) async {
    try {
      prefs.setString(
        'group',
        json.encode(
          groupModel.toJson(),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
