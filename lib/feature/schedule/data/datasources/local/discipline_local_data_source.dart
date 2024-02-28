import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';

class DisciplineLocalDataSource
    extends LocalDataSource<List<DisciplineModel>, List<int>> {
  Box<DisciplineModel> disciplineBox;

  DisciplineLocalDataSource({required this.disciplineBox});
  
  @override
  Future<void> add(List<DisciplineModel> disciplineList) async {
    try {
      await updateBox<DisciplineModel>(
        {for (final item in disciplineList) item.id: item},
        disciplineBox.values.map((e) => e.id).toList(),
        disciplineBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<DisciplineModel>> load(List<int> request) async {
    try {
      if (request.isEmpty) return disciplineBox.values.toList();
      return disciplineBox.values
          .where((element) => request.contains(element.id))
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
