import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';

class GroupListLocalDataSource extends LocalDataSource<List<AccountModel>,void> {
  Box<AccountModel> groupListBox;

  GroupListLocalDataSource({required this.groupListBox});
  @override
  Future<void> add(List<AccountModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        groupListBox.clear();
        return;
      }

      await updateBox<AccountModel>(
        {for (final item in remoteLoad) item.id: item},
        groupListBox.values.map((e) => e.id).toList(),
        groupListBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<AccountModel>> load(void request) async {
    try {
      return groupListBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
