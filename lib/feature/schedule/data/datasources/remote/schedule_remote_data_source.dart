import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';


class ScheduleRemoteDataSource extends RemoteDataSource<List<SubjectModel>,ScheduleRequestModel> {
  final http.Client client;

  ScheduleRemoteDataSource({required this.client});

  @override
  Future<List<SubjectModel>> load(ScheduleRequestModel request) async {
    try {
      final response = await client.get(
        Uri.parse('$BASE_URL/schedule/subject/group'+'?groupId=${request.groupId}&weekTypeId=${request.weekTypeId}&year=${request.academicYear}'),
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
