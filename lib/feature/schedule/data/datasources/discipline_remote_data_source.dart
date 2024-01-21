import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/common/data/model/discipline_model.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';

abstract class DisciplineRemoteDataSource {
  Future<List<DisciplineModel>> load(List<int> request);
}

class DisciplineRemoteDataSourceImpl implements DisciplineRemoteDataSource {
  final http.Client client;

  DisciplineRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DisciplineModel>> load(List<int> request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/schedule/discipline' +
            '?ids=${request.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(' ', '')}'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                DisciplineModel.fromJson(value as Map<String, dynamic>))
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
