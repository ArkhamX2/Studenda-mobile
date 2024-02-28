

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';

class MarkRemoteDataSource
    extends RemoteDataSource<List<MarkModel>, List<int>> {
  final http.Client client;

  MarkRemoteDataSource({required this.client});
  @override
  Future<List<MarkModel>> load(List<int> request) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'taskIds': request,
      };
      final uri =
          SimplifiedUri.uri('$BASE_URL/journal/mark/task', queryParameters);
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map(
              (dynamic value) =>
                  MarkModel.fromJson(value as Map<String, dynamic>),
            )
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
