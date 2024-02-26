import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';

class SubjectTypeLocalDataSource extends LocalDataSource<List<SubjectTypeModel>,List<int>> {
  Box<SubjectTypeModel> subjectTypeBox;

  SubjectTypeLocalDataSource({required this.subjectTypeBox});

  @override
  Future<void> add(List<SubjectTypeModel> subjectTypeList) async {
    try {
      final List<int> subjectTypes = [];
      subjectTypes.addAll(subjectTypeBox.values.map((e) => e.id));
      subjectTypes.addAll(subjectTypeList.map((e) => e.id));
      final ids = {...subjectTypes};
      await subjectTypeBox.putAll(
        {
          for (final element
              in subjectTypeList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
      
      await subjectTypeBox.deleteAll([
        for (final id in subjectTypeList.where(
          (element) =>
              !subjectTypeList.map((e) => e.id).contains(element.id),
        ))
          id,
      ]);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SubjectTypeModel>> load(List<int> request) async {
    try {
      if (request.isEmpty) return subjectTypeBox.values.toList();
      return subjectTypeBox.values
          .where((element) => request.contains(element.id))
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
