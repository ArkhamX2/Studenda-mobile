import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';

class AbsenceLocalDataSource extends LocalDataSource<List<AbsenceModel>,void> {
  @override
  Future<void> add(List<AbsenceModel> remoteLoad) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<AbsenceModel>> load(void request) async {
    // TODO: implement load
    throw UnimplementedError();
  }
}
