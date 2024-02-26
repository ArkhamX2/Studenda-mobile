import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';

class MarkTypeRemoteDataSource
    extends RemoteDataSource<List<MarkTypeModel>, void> {
  @override
  Future<List<MarkTypeModel>> load(void request) {
    // TODO: implement load
    throw UnimplementedError();
  }
}
