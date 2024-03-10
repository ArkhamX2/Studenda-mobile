import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

class DayPositionRemoteDataSource extends RemoteDataSource<List<DayPositionModel>,void> {
  final http.Client client;

  DayPositionRemoteDataSource({required this.client});

  @override
  Future<List<DayPositionModel>> studentLoad(void request) async {
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
                DayPositionModel.fromJson(value as Map<String, dynamic>),)
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
  Future<List<DayPositionModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
