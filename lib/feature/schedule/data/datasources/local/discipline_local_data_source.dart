import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';

class DisciplineLocalDataSource
    extends LocalDataSource<List<DisciplineModel>, List<int>> {
  Box<DisciplineModel> disciplineBox;

  DisciplineLocalDataSource({required this.disciplineBox});

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

  @override
  Future<void> add(List<DisciplineModel> disciplineList) async {
    try {
      final List<int> disciplines = [];
      disciplines.addAll(disciplineBox.values.map((e) => e.id));
      disciplines.addAll(disciplineList.map((e) => e.id));
      final ids = {...disciplines};
      await disciplineBox.putAll(
        {
          for (final element
              in disciplineList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
