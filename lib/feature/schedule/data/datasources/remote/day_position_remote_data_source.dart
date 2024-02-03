import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

abstract class DayPositionRemoteDataSource {
  Future<List<DayPositionModel>> load(void request);
}

class DayPositionRemoteDataSourceImpl implements DayPositionRemoteDataSource {
  final http.Client client;

  DayPositionRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DayPositionModel>> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('$BASE_URL/schedule/day-position/all'),
      );
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
}
