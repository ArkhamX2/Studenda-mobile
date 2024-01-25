import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/department_model.dart';

abstract class DepartmentRemoteDataSource {
  Future<List<DepartmentModel>> load(void request);
}

class DepartmentRemoteDataSourceImpl implements DepartmentRemoteDataSource{
  final http.Client client;
  
  DepartmentRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DepartmentModel>> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/department'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded.map((dynamic value) => DepartmentModel.fromJson(value as Map<String,dynamic>)).toList();
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
