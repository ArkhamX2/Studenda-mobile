import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';

class MarkRemoteDataSource
    extends RemoteDataSource<List<MarkModel>, List<int>> {
  @override
  Future<List<MarkModel>> load(List<int> request) {
    // TODO: implement load
    throw UnimplementedError();
  }
}
