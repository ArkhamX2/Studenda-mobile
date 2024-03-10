import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';

class AbsenceLocalDataSource extends LocalDataSource<List<AbsenceModel>,void> {
  Box<AbsenceModel> absenceBox;

  AbsenceLocalDataSource({required this.absenceBox});
  @override
  Future<void> add(List<AbsenceModel> remoteLoad) async {
    try {
      if (remoteLoad.isEmpty) {
        absenceBox.clear();
        return;
      }

      await updateBox<AbsenceModel>(
        {for (final item in remoteLoad) item.id: item},
        absenceBox.values.map((e) => e.id).toList(),
        absenceBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<AbsenceModel>> studentLoad(void request) async {
    try {
      return absenceBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<AbsenceModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
