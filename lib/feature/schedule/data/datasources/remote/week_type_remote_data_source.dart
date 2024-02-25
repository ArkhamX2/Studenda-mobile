
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';

class WeekTypeRemoteDataSource extends RemoteDataSource<List<WeekTypeModel>,void>{
  final http.Client client;
  
  WeekTypeRemoteDataSource({required this.client});

  Future<WeekTypeModel> getCurrent(void request) async {
    try {
      final response = await client.get(
        Uri.parse('$BASE_URL/schedule/week-type/current'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as Map<String,dynamic>;
        final responseModel = WeekTypeModel.fromJson(decoded);
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
  
  @override
  Future<List<WeekTypeModel>> load(void request) async {try {
      
      final Map<String,dynamic> queryParameters = {
        'ids' : [],
      };
      final uri = 
        SimplifiedUri.uri('http://88.210.3.137/api/schedule/week-type', queryParameters);
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                WeekTypeModel.fromJson(value as Map<String, dynamic>),)
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
