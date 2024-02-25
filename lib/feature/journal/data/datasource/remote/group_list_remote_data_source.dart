import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

class GroupListRemoteDataSource
    extends RemoteDataSource<List<UserModel>, List<int>> {
  @override
  Future<List<UserModel>> load(List<int> request) {
    // TODO: implement load
    throw UnimplementedError();
  }
}
