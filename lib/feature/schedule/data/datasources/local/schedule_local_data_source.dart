import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/api/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';

class ScheduleLocalDataSource extends LocalDataSource<List<SubjectModel>,
    ScheduleRequestByWeekTypeModel> {
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
  Future<List<SubjectModel>> studentLoad(
    ScheduleRequestByWeekTypeModel request,
  ) async {
    try {
      final List<SubjectModel> subjects = [];

      for (final id in request.weekTypeIds) {
        subjects.addAll(
          subjectBox.values
              .where(
                (element) =>
                    element.groupId == request.groupId &&
                    element.weekTypeId == id,
              )
              .toList(),
        );
      }
      return subjects;
    } catch (e) {
      throw CacheException();
    }
  }

  Future<void> clearWeek(ScheduleRequestByWeekTypeModel request) async {
    for (final weekType in request.weekTypeIds) {
      await subjectBox.deleteAll([
        for (final subject in subjectBox.values.where(
          (element) =>
              element.weekTypeId == weekType &&
              element.groupId == request.groupId,
        ))
          subject.id,
      ]);
    }
  }
  
  @override
  Future<List<SubjectModel>> teacherLoad(ScheduleRequestByWeekTypeModel request) {
    // TODO: implement teacherLoad
    throw UnimplementedError();
  }
}
