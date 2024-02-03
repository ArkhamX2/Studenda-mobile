import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';

abstract class DisciplineLocalDataSource {
  Future<List<DisciplineModel>> load();
  Future<void> add(List<DisciplineModel> remoteLoad);
}

class DisciplineLocalDataSourceImpl implements DisciplineLocalDataSource {
  Box<DisciplineModel> disciplineBox;

  DisciplineLocalDataSourceImpl({required this.disciplineBox});

  @override
  Future<List<DisciplineModel>> load() async {
    try {
      return disciplineBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<DisciplineModel> courseList) async {
    try {
      await disciplineBox.putAll(courseList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
}
