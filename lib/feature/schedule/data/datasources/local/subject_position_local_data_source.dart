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
      if (subjectPositionList.isEmpty) {
        subjectPositionBox.clear();
        return;
      }

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
  Future<List<SubjectPositionModel>> studentLoad(void request) async {
    try {
      return subjectPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<List<SubjectPositionModel>> teacherLoad(void request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
