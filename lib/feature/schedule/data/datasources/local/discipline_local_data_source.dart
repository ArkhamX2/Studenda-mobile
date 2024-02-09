import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';

abstract class DisciplineLocalDataSource {
  Future<List<DisciplineModel>> load([List<int> request = const []]);
  Future<void> add(List<DisciplineModel> remoteLoad);
}

class DisciplineLocalDataSourceImpl implements DisciplineLocalDataSource {
  Box<DisciplineModel> disciplineBox;

  DisciplineLocalDataSourceImpl({required this.disciplineBox});

  @override
  Future<List<DisciplineModel>> load([List<int> request = const []]) async {
    try {
      if(request.isEmpty) return disciplineBox.values.toList();
      return disciplineBox.values.where((element) => request.contains(element.id)).toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<DisciplineModel> disciplineList) async {
    try {
      await disciplineBox.putAll(disciplineList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
}
