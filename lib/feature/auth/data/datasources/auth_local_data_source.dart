import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_response_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';
abstract class AuthLocalDataSource{
  Future<TokenModel> loadToken();
  Future<void> updateToken(TokenModel token);
  Future<void> add(SecurityResponseModel remoteLoad);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource{
  FlutterSecureStorage tokenStorage;
  Box<UserModel> userBox;

  AuthLocalDataSourceImpl({required this.tokenStorage, required this.userBox});

  @override
  Future<void> add(SecurityResponseModel response) async {
    try {
      await tokenStorage.write(key: 'jwt_access_token', value: response.token);
      await tokenStorage.write(
        key: 'jwt_refresh_token',
        value: response.refreshToken,
      );
      final alreadyExists = userBox.values.firstWhere(
        (element) => element.id == response.user.id,
      );

      // ignore: unrelated_type_equality_checks
      if (alreadyExists == -1) {
        try {
          userBox.add(
            UserModel(
              id: response.user.id,
              roleId: response.user.roleId,
              name: response.user.name,
              patronymic: response.user.patronymic,
              surname: response.user.surname,
            ),
          );
        } on Exception {
          throw CacheException();
        }
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> updateToken(TokenModel token) async {
    try {
      await tokenStorage.write(key: 'jwt_access_token', value: token.token);
      await tokenStorage.write(
        key: 'jwt_refresh_token',
        value: token.refreshToken,
      );
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<TokenModel> loadToken() async {
    try {
      final token = await tokenStorage.read(key: 'jwt_access_token');
      final refresh = await tokenStorage.read(key: 'jwt_refresh_token');
      return TokenModel(token: token??"", refreshToken: refresh??"");
    } catch (e) {
      throw CacheException();
    }
  }
}
