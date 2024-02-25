import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/mark_model.dart';

class MarkLocalDataSource extends LocalDataSource<List<MarkModel>,void> {
  @override
  Future<void> add(List<MarkModel> remoteLoad) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<MarkModel>> load(void request) async {
    // TODO: implement load
    throw UnimplementedError();
  }
}
