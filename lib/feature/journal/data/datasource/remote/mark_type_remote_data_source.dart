
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';

class MarkTypeRemoteDataSource
    extends RemoteDataSource<List<MarkTypeModel>, void> {
      
  final http.Client client;

  MarkTypeRemoteDataSource({required this.client});

  @override
  Future<List<MarkTypeModel>> studentLoad(void request)async {
    try {
      final Map<String, dynamic> queryParameters = {
        'ids': [],
      };
      final uri =
          SimplifiedUri.uri('$BASE_URL/journal/mark-type', queryParameters);
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map(
              (dynamic value) =>
                  MarkTypeModel.fromJson(value as Map<String, dynamic>),
            )
            .toList();
        return responseModel;
      } else if (response.statusCode == 401) {
        throw AuthException();
      }else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
  
  @override
  Future<List<MarkTypeModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
  }
