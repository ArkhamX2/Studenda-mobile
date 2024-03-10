import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';

class SubjectPositionRemoteDataSource extends RemoteDataSource<List<SubjectPositionModel>,void> {
  final http.Client client;

  SubjectPositionRemoteDataSource({required this.client});

  @override
  Future<List<SubjectPositionModel>> studentLoad(void request) async {
    try {
      final Map<String,dynamic> queryParameters = {
        'ids' : [],
      };
      final uri = 
        SimplifiedUri.uri('$BASE_URL/schedule/day-position', queryParameters);
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                SubjectPositionModel.fromJson(value as Map<String, dynamic>),)
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
  Future<List<SubjectPositionModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
