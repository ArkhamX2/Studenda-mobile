import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';

abstract class SubjectPositionLocalDataSource {
  Future<void> add(List<SubjectPositionModel> remoteLoad);

  Future<List<SubjectPositionModel>> load();
}

class SubjectPositionLocalDataSourceImpl implements SubjectPositionLocalDataSource {
  Box<SubjectPositionModel> subjectPositionBox;

  SubjectPositionLocalDataSourceImpl({required this.subjectPositionBox});

  @override
  Future<void> add(List<SubjectPositionModel> remoteLoad) async {
    try {
      final List<SubjectPositionModel> subjectPositions = [];
      subjectPositions.addAll(subjectPositionBox.values.toList());
      subjectPositions.addAll(remoteLoad);
      subjectPositions.toSet();
      await subjectPositionBox.putAll(subjectPositions.asMap());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SubjectPositionModel>> load() async {
    try {
      return subjectPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
