import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/network/api_config.dart';
import 'package:studenda_mobile_student/core/network/simplified_uri.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/group_list_request_model.dart';

class GroupListRemoteDataSource
    extends RemoteDataSource<List<AccountModel>, GroupListRequestModel> {
        final http.Client client;

  GroupListRemoteDataSource({required this.client});
  @override
  Future<List<AccountModel>> load(GroupListRequestModel request) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'ids': request,
      };
      final uri =
          SimplifiedUri.uri('$BASE_URL/security/user', queryParameters);
      final response = await client.get(uri,headers: {"Authorization": "Bearer ${request.token}" } );
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body) as List<dynamic>;
        final responseModel = decoded
            .map(
              (dynamic value) =>
                  AccountModel.fromJson(value as Map<String, dynamic>),
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
}
