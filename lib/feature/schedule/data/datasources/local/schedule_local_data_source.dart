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
      //TODO: Что если из расписания убирается какой-то предмет? Сравнивать то, что пришло и то, что есть, обновляя то, что есть и удаляя, то что было удалено
      final List<int> subjects = [];
      subjects.addAll(subjectBox.values.map((e) => e.id));
      subjects.addAll(subjectList.map((e) => e.id));
      final ids = {...subjects};
      await subjectBox.putAll(
        {
          for (final element
              in subjectList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
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
