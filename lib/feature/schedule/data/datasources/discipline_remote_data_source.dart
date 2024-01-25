import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';

abstract class DisciplineRemoteDataSource {
  Future<List<DisciplineModel>> load(List<int> request);
}

class DisciplineRemoteDataSourceImpl implements DisciplineRemoteDataSource {
  final http.Client client;

  DisciplineRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DisciplineModel>> load(List<int> request) async {
    try {
      final Map<String,dynamic> queryParameters = {
        'ids' : request,
      };
      final uri = 
        SimplifiedUri.uri('http://88.210.3.137/api/schedule/discipline', queryParameters);
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                DisciplineModel.fromJson(value as Map<String, dynamic>),)
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
