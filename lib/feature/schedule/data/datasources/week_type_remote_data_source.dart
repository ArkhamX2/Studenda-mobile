import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/feature/schedule/data/models/week_type_model.dart';

abstract class WeekTypeRemoteDataSource {
  Future<WeekTypeModel> load(void request);
}

class WeekTypeRemoteDataSourceImpl implements WeekTypeRemoteDataSource{
  final http.Client client;
  
  WeekTypeRemoteDataSourceImpl({required this.client});

  @override
  Future<WeekTypeModel> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/week_type'),
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

}
