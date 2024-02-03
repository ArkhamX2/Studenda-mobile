import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';

abstract class ScheduleLocalDataSource {
  Future<void> add(List<SubjectModel> remoteLoad);

  Future<List<SubjectModel>> load(ScheduleRequestModel request);
}

class ScheduleLocalDataSourceImpl implements ScheduleLocalDataSource {
  Box<SubjectModel> subjectBox;

  ScheduleLocalDataSourceImpl({required this.subjectBox});

  @override
  Future<void> add(List<SubjectModel> remoteLoad) async {
    try {
      await subjectBox.putAll(remoteLoad.asMap());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<SubjectModel>> load(ScheduleRequestModel request) async {
    try {
      return subjectBox.values
          .where(
            (element) =>
                element.groupId == request.groupId &&
                element.weekTypeId == request.weekTypeId,
          )
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }
}