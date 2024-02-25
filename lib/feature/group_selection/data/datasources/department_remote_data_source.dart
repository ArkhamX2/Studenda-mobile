import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';

class DepartmentRemoteDataSource
    extends RemoteDataSource<List<DepartmentModel>, void> {
  final http.Client client;

  DepartmentRemoteDataSource({required this.client});

  @override
  Future<List<DepartmentModel>> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('$BASE_URL/department'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                DepartmentModel.fromJson(value as Map<String, dynamic>),)
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
