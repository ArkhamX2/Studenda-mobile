import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';

abstract class TeacherRemoteDataSource {
  Future<List<UserModel>> load(List<int> request);
}

class TeacherRemoteDataSourceImpl implements TeacherRemoteDataSource {
  final http.Client client;

  TeacherRemoteDataSourceImpl({required this.client});

  @override
  Future<List<UserModel>> load(List<int> request) async {
    try {
      //TODO: Заменить на корректный роут для преподавателей
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/security/user' +
            '?ids=${request.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(' ', '')}',),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                UserModel.fromJson(value as Map<String, dynamic>),)
            .toList();
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
