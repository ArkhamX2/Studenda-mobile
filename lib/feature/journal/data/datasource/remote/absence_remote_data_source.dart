import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';

class AbsenceRemoteDataSource
    extends RemoteDataSource<List<AbsenceModel>, AbsenceRequestModel> {
  final http.Client client;

  AbsenceRemoteDataSource({required this.client});
  @override
  Future<List<AbsenceModel>> studentLoad(AbsenceRequestModel request) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'accountId': request.accountId,
        'sessionIds': request.sessionIds,
      };
      final uri =
          SimplifiedUri.uri('$BASE_URL/journal/absence/account', queryParameters);
      final response = await client.get(uri,headers: {"Authorization": "Bearer ${request.token}" } );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map(
              (dynamic value) =>
                  AbsenceModel.fromJson(value as Map<String, dynamic>),
            )
            .toList();
        return responseModel;
      } else if (response.statusCode == 401) {
        throw AuthException();
      }
      else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
  
  @override
  Future<List<AbsenceModel>> teacherLoad(AbsenceRequestModel request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
