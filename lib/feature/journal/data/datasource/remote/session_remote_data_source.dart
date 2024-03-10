import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/session_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';

class SessionRemoteDataSource
    extends RemoteDataSource<List<SessionModel>, SessionRequestModel> {
  final http.Client client;

  SessionRemoteDataSource({required this.client});
  @override
  Future<List<SessionModel>> studentLoad(SessionRequestModel request) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'subjectId': request.subjectId,
        'dates': request.dates,
      };
      final uri =
          SimplifiedUri.uri('$BASE_URL/journal/session/subject', queryParameters);
      final response = await client.get(uri,headers: {"Authorization": "Bearer ${request.token}" } );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map(
              (dynamic value) =>
                  SessionModel.fromJson(value as Map<String, dynamic>),
            )
            .toList();
        return responseModel;
      } else if (response.statusCode == 401) {
        throw AuthException();
      }else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
  
  @override
  Future<List<SessionModel>> teacherLoad(SessionRequestModel request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
