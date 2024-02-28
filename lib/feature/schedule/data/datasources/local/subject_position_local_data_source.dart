import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';

class SubjectPositionLocalDataSource
    extends LocalDataSource<List<SubjectPositionModel>, void> {
      
  Box<SubjectPositionModel> subjectPositionBox;

  SubjectPositionLocalDataSource({required this.subjectPositionBox});

  @override
  Future<void> add(List<SubjectPositionModel> subjectPositionList) async {
    try {
      await updateBox<SubjectPositionModel>(
        {for (final item in subjectPositionList) item.id: item},
        subjectPositionBox.values.map((e) => e.id).toList(),
        subjectPositionBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SubjectPositionModel>> load(void request) async {
    try {
      return subjectPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
