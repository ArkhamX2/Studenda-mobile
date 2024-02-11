import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';

abstract class SubjectPositionLocalDataSource {
  Future<void> add(List<SubjectPositionModel> remoteLoad);

  List<SubjectPositionModel> load();
}

class SubjectPositionLocalDataSourceImpl
    implements SubjectPositionLocalDataSource {
  Box<SubjectPositionModel> subjectPositionBox;

  SubjectPositionLocalDataSourceImpl({required this.subjectPositionBox});

  @override
  Future<void> add(List<SubjectPositionModel> subjectPositionList) async {
    try {
      final List<int> subjectPositions = [];
      subjectPositions.addAll(subjectPositionBox.values.map((e) => e.id));
      subjectPositions.addAll(subjectPositionList.map((e) => e.id));
      final ids = {...subjectPositions};
      await subjectPositionBox.putAll(
        {
          for (final element
              in subjectPositionList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  List<SubjectPositionModel> load() {
    try {
      return subjectPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
