import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

abstract class TeacherLocalDataSource {
  Future<void> add(List<UserModel> remoteLoad);

  Future<List<UserModel>> load();
}

class TeacherLocalDataSourceImpl implements TeacherLocalDataSource {
  Box<UserModel> userBox;

  TeacherLocalDataSourceImpl({required this.userBox});

  @override
  Future<void> add(List<UserModel> remoteLoad) async {
    try {
      await userBox.putAll(remoteLoad.asMap());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<UserModel>> load() async {
    try {
      return userBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
