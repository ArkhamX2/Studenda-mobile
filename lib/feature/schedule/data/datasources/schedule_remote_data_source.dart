import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';
import 'package:studenda_mobile/feature/auth/data/models/role/role_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';

import '../models/schedule_request_model.dart';

abstract class ScheduleRemoteDataSource {
  Future<List<SubjectModel>> load(ScheduleRequestModel request);
}

class ScheduleRemoteDataSourceImpl implements ScheduleRemoteDataSource {
  final http.Client client;

  ScheduleRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SubjectModel>> load(ScheduleRequestModel request) async {
    try {
      // final response = await client.get(
      //   Uri.parse('http://88.210.3.137/subject'),
      // );
      // if (response.statusCode == 200) {
      //   final decoded = json.decode(response.body) as List<dynamic>;
      //   final responseModel = decoded.map((dynamic value) => SubjectModel.fromJson(value as Map<String,dynamic>)).toList();
      //   return responseModel;
      // } else {
      //   throw ServerException();
      // }

      return [
            const SubjectModel(
                id: 1,
                discipline: DisciplineModel(id: 1, name: "name"),
                user: UserModel(
                    id: 1, role: RoleModel(id: 1, name: "name"), name: "name"),
                classroom: "classroom",
                subjectPositionId: 0,
                weekPositionId: 0),
            const SubjectModel(
                id: 2,
                discipline: DisciplineModel(id: 1, name: "name"),
                user: UserModel(
                    id: 1, role: RoleModel(id: 1, name: "name"), name: "name"),
                classroom: "classroom",
                subjectPositionId: 0,
                weekPositionId: 1),
            const SubjectModel(
                id: 3,
                discipline: DisciplineModel(id: 1, name: "name"),
                user: UserModel(
                    id: 1, role: RoleModel(id: 1, name: "name"), name: "name"),
                classroom: "classroom",
                subjectPositionId: 0,
                weekPositionId: 2),
            const SubjectModel(
                id: 4,
                discipline: DisciplineModel(id: 1, name: "name"),
                user: UserModel(
                    id: 1, role: RoleModel(id: 1, name: "name"), name: "name"),
                classroom: "classroom",
                subjectPositionId: 0,
                weekPositionId: 3),
          ];
    } catch (e) {
      throw ServerException();
    }
  }
}
