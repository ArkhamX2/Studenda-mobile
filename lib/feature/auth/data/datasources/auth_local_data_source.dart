import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/user_model/user_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_response_model.dart';

abstract class AuthLocalDataSource {
  Future<void> add(SecurityResponseModel remoteAuth);
  Future<SecurityResponseModel> load();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  FlutterSecureStorage tokenStorage;
  Box<UserModel> userBox;

  AuthLocalDataSourceImpl({required this.tokenStorage, required this.userBox});

  @override
  Future<void> add(SecurityResponseModel response) async {
    try {
      await tokenStorage.write(key: 'jwt_access_token', value: response.token);
      await tokenStorage.write(
          key: 'jwt_refresh_token', value: response.refreshToken);
      final alreadyExists = userBox.values.firstWhere(
        (element) => element.id == response.user.id,
      );

      if (alreadyExists == -1) {
        try {
          userBox.add(UserModel(
              id: response.user.id,
              roleId: response.user.roleId,
              name: response.user.name));
        } on Exception {
          throw CacheException();
        }
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<SecurityResponseModel> load() async {
    try {
      final token = await tokenStorage.read(key: 'jwt_access_token');
      final refreshToken = await tokenStorage.read(key: 'jwt_refresh_token');
      if (token != null && refreshToken != null) {
        final user = userBox.get(userBox.values.first);
        if (user != null) {
          return SecurityResponseModel(
              user: user, token: token, refreshToken: refreshToken);
        }
        else{
          throw CacheException();
        }
      } else {
        throw CacheException();
      }
    } catch (e) {
      throw CacheException();
    }
  }
}
