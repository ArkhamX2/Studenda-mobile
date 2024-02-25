import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/mark_type_model.dart';

class MarkTypeLocalDataSource  extends LocalDataSource<List<MarkTypeModel>,void>{
  @override
  Future<void> add(List<MarkTypeModel> remoteLoad) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<MarkTypeModel>> load(void request) async {
    // TODO: implement load
    throw UnimplementedError();
  }
}
