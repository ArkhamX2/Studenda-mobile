import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';

class SessionLocalDataSource extends LocalDataSource<List<SessionModel>,void> {
  Box<SessionModel> sessionBox;

  SessionLocalDataSource({required this.sessionBox});

  @override
  Future<void> add(List<SessionModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        sessionBox.clear();
        return;
      }

      await updateBox<SessionModel>(
        {for (final item in remoteLoad) item.id: item},
        sessionBox.values.map((e) => e.id).toList(),
        sessionBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SessionModel>> load(void request) async {
    try {
      return sessionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
