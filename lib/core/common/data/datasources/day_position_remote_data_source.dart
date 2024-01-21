import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/common/data/model/day_position_model.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';

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
        Uri.parse('http://88.210.3.137/api/schedule/day-position/all'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                DayPositionModel.fromJson(value as Map<String, dynamic>))
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
