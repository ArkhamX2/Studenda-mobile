import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';

abstract class SubjectTypeLocalDataSource {
  Future<void> add(List<SubjectTypeModel> remoteLoad);

  Future<List<SubjectTypeModel>> load([List<int> request = const []]);
}

class SubjectTypeLocalDataSourceImpl implements SubjectTypeLocalDataSource {
  Box<SubjectTypeModel> subjectTypeBox;

  SubjectTypeLocalDataSourceImpl({required this.subjectTypeBox});

  @override
  Future<void> add(List<SubjectTypeModel> remoteLoad) async {
    try {
      await subjectTypeBox.putAll(remoteLoad.asMap());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SubjectTypeModel>> load([List<int> request = const []]) async {
    try {
      if(request.isEmpty) return subjectTypeBox.values.toList();
      return subjectTypeBox.values.where((element) => request.contains(element.id)).toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
