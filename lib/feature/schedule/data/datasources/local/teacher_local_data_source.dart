import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

class TeacherLocalDataSource
    extends LocalDataSource<List<UserModel>, List<int>> {
  Box<UserModel> userBox;

  TeacherLocalDataSource({required this.userBox});

  @override
  Future<void> add(List<UserModel> teacherList) async {
    try {
      if (teacherList.isEmpty) {
        userBox.clear();
        return;
      }

      await updateBox<UserModel>(
        {for (final item in teacherList) item.id: item},
        userBox.values.map((e) => e.id).toList(),
        userBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<UserModel>> load(List<int> request) async {
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
