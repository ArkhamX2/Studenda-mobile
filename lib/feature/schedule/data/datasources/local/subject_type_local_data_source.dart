import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';

class SubjectTypeLocalDataSource
    extends LocalDataSource<List<SubjectTypeModel>, List<int>> {
      
  Box<SubjectTypeModel> subjectTypeBox;

  SubjectTypeLocalDataSource({required this.subjectTypeBox});

  @override
  Future<void> add(List<SubjectTypeModel> subjectTypeList) async {
    try {
      await updateBox<SubjectTypeModel>(
        {for (final item in subjectTypeList) item.id: item},
        subjectTypeBox.values.map((e) => e.id).toList(),
        subjectTypeBox,
      );
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
