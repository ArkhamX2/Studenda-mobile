import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type/subject_type_model.dart';

class SubjectTypeRemoteDataSource extends RemoteDataSource<List<SubjectTypeModel>,List<int>> {
  final http.Client client;

  SubjectTypeRemoteDataSource({required this.client});

  @override
  Future<List<SubjectTypeModel>> studentLoad(List<int> request) async {
    try {
      
      final Map<String,dynamic> queryParameters = {
        'ids' : request,
      };
      final uri = 
        SimplifiedUri.uri('$BASE_URL/schedule/subject-type', queryParameters);
        
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
  
  @override
  Future<List<SubjectTypeModel>> teacherLoad(List<int> request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
