import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';

class ScheduleLocalDataSource
    extends LocalDataSource<List<SubjectModel>, ScheduleRequestModel> {
  Box<SubjectModel> subjectBox;

  ScheduleLocalDataSource({required this.subjectBox});

  @override
  Future<void> add(List<SubjectModel> subjectList) async {
    try {
      final List<SubjectModel> subjects = [];
      subjects.addAll(subjectBox.values);
      subjects.addAll(subjectList);
      final ids = {...subjects.map((e) => e.id)};
      await subjectBox.putAll(
        {
          for (final element
              in subjectList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );

      await subjectBox.deleteAll([
        for (final subject in subjects.where(
          (element) =>
              !subjectList.map((e) => e.id).contains(element.id) &&
              element.weekTypeId == subjectList.firstOrNull?.weekTypeId &&
              element.groupId == subjectList.firstOrNull?.groupId,
              
        ))
          subject.id,
      ]);

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
