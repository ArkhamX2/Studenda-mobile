import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

abstract class TeacherLocalDataSource {
  Future<void> add(List<UserModel> remoteLoad);

  Future<List<UserModel>> load([List<int> request = const []]);
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
  Future<List<UserModel>> load([List<int> request = const []]) async {
    try {
      if(request.isEmpty) return userBox.values.toList();
      return userBox.values.where((element) => request.contains(element.id)).toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
