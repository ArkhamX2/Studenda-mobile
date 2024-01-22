import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/common/data/model/subject_type_model.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';

abstract class SubjectTypeRemoteDataSource {
  Future<List<SubjectTypeModel>> load(List<int> request);
}

class SubjectTypeRemoteDataSourceImpl implements SubjectTypeRemoteDataSource {
  final http.Client client;

  SubjectTypeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SubjectTypeModel>> load(List<int> request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/schedule/subject-type' +
            '?ids=${request.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(' ', '')}',),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map((dynamic value) =>
                SubjectTypeModel.fromJson(value as Map<String, dynamic>),)
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
