// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/task_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_task_list.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTaskList getTaskList;

  TaskBloc({required this.getTaskList}) : super(const _Initial()) {
    on<_Load>((event, emit) async {
      final result = await getTaskList.call(TaskStudentRequestModel(
        asigneeUserIds: event.asigneeUserIds,
        disciplineId: event.disciplineId,
        subjectTypeId: event.subjectTypeId,
        academicYear: event.academicYear,
      ));
      result.fold(
        (l) => emit(TaskState.fail(l.message)),
        (r) => emit(TaskState.success(mapTaskModelToEntity(r))),
      );
    });
    on<_LoadLocal>((event, emit) async {
      final result = await getTaskList.call(
        TaskStudentRequestModel(
          asigneeUserIds: event.asigneeUserIds,
          disciplineId: event.disciplineId,
          subjectTypeId: event.subjectTypeId,
          academicYear: event.academicYear,
        ),
        false,
      );
      result.fold(
        (l) => emit(TaskState.localLoadingFail(l.message)),
        (r) => emit(TaskState.localLoadingSuccess(mapTaskModelToEntity(r))),
      );
    });
  }
}

List<TaskEntity> mapTaskModelToEntity(List<TaskModel> modelList) {
  return modelList
      .map((e) => TaskEntity(
          id: e.id,
          name: e.name,
          description: e.description,
          endDateName: e.updatedAt.toString()))
      .toList();
}

List<int> _getSubjectTypeIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.subjectTypeId).toSet().toList();
}

List<int> _getDisciplineIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.disciplineId).toSet().toList();
}
