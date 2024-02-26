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
      final List<int> subjectPositions = [];
      subjectPositions.addAll(subjectPositionBox.values.map((e) => e.id));
      subjectPositions.addAll(subjectPositionList.map((e) => e.id));
      final ids = {...subjectPositions};
      await subjectPositionBox.putAll(
        {
          for (final element in subjectPositionList
              .where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );

      await subjectPositionBox.deleteAll([
        for (final id in subjectPositionList.where(
          (element) =>
              !subjectPositionList.map((e) => e.id).contains(element.id),
        ))
          id,
      ]);
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
