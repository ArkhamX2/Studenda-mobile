import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';

abstract class ScheduleRemoteDataSource {
  Future<List<SubjectModel>> load(ScheduleRequestModel request);
}

class ScheduleRemoteDataSourceImpl implements ScheduleRemoteDataSource {
  final http.Client client;

  ScheduleRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SubjectModel>> load(ScheduleRequestModel request) async {
    try {
      final response = await client.get(
        Uri.parse('http://88.210.3.137/api/schedule/subject'+'?groupId=${request.groupId}&weekTypeId=${request.weekTypeId}&year=${request.academicYear}'),
      );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded.map((dynamic value) => SubjectModel.fromJson(value as Map<String,dynamic>)).toList();
        return responseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
