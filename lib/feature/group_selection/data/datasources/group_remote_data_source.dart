import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

abstract class GroupRemoteDataSource {
  Future<List<GroupModel>> load(void request);
}

class GroupRemoteDataSourceImpl implements GroupRemoteDataSource{
  final http.Client client;
  
  GroupRemoteDataSourceImpl({required this.client});

  @override
  Future<List<GroupModel>> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('$BASE_URL/group'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded.map((dynamic value) => GroupModel.fromJson(value as Map<String,dynamic>)).toList();
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
