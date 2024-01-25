
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';

abstract class WeekTypeRemoteDataSource {
  Future<WeekTypeModel> getCurrent(void request);
  Future<List<WeekTypeModel>> getAll(void request);
}

class WeekTypeRemoteDataSourceImpl implements WeekTypeRemoteDataSource{
  final http.Client client;
  
  WeekTypeRemoteDataSourceImpl({required this.client});

  @override
  Future<WeekTypeModel> getCurrent(void request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/schedule/week-type/current'),
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
  Future<List<WeekTypeModel>> getAll(void request) async {try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/schedule/week-type/all'),
      );
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
