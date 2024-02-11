import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

abstract class TeacherLocalDataSource {
  Future<void> add(List<UserModel> remoteLoad);

  List<UserModel> load([List<int> request = const []]);
}

class TeacherLocalDataSourceImpl implements TeacherLocalDataSource {
  Box<UserModel> userBox;

  TeacherLocalDataSourceImpl({required this.userBox});

  @override
  Future<void> add(List<UserModel> teacherList) async {
    try {
      final List<int> teachers = [];
      teachers.addAll(userBox.values.map((e) => e.id));
      teachers.addAll(teacherList.map((e) => e.id));
      final ids = {...teachers};
      await userBox.putAll(
        {
          for (final element
              in teacherList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  List<UserModel> load([List<int> request = const []]) {
    try {
      if (request.isEmpty) return userBox.values.toList();
      return userBox.values
          .where((element) => request.contains(element.id))
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
