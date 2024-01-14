import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/course_model.dart';

abstract class CourseRemoteDataSource {
  Future<List<CourseModel>> load(void request);
}

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource{
  final http.Client client;
  
  CourseRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CourseModel>> load(void request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/course'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded.map((dynamic value) => CourseModel.fromJson(value as Map<String,dynamic>)).toList();
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }


}
