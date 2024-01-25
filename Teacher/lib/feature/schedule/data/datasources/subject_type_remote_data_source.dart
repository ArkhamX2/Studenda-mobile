import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/network/simplified_uri.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_type_model.dart';

abstract class SubjectTypeRemoteDataSource {
  Future<List<SubjectTypeModel>> load(List<int> request);
}

class SubjectTypeRemoteDataSourceImpl implements SubjectTypeRemoteDataSource {
  final http.Client client;

  SubjectTypeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SubjectTypeModel>> load(List<int> request) async {
    try {
      
      final Map<String,dynamic> queryParameters = {
        'ids' : request,
      };
      final uri = 
        SimplifiedUri.uri('http://88.210.3.137/api/schedule/subject-type', queryParameters);
        
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                SubjectTypeModel.fromJson(value as Map<String, dynamic>),)
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
