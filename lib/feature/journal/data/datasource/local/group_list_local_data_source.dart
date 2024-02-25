import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';

class GroupListLocalDataSource extends LocalDataSource<List<UserModel>,void> {
  @override
  Future<void> add(List<UserModel> remoteLoad) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> load(void request) async {
    // TODO: implement load
    throw UnimplementedError();
  }
}
