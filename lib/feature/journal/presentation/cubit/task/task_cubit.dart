import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/task_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/task_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_task_list.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

class TaskCubit extends Cubit<TaskState> {
  final GetTaskList loadTasks;

  List<TaskEntity> taskList = [];

  TaskCubit({required this.loadTasks}) : super(const TaskState.initial());

  Future<void> load(
    TaskStudentRequestModel request,
  ) async {
    final result = await loadTasks.call(request);
    result.fold(
      (l) => emit(TaskState.fail(l.message)),
      (r) => emit(TaskState.success(mapTaskModelToEntity(
        r,
      ))),
    );
  }

  Future<void> loadLocally(
    TaskStudentRequestModel request,
  ) async {
    emit(const TaskState.loading());
    final result = await loadTasks.call(request);
    result.fold(
      (l) => emit(TaskState.localLoadingFail(l.message)),
      (r) => emit(TaskState.localLoadingSuccess(mapTaskModelToEntity(r))),
    );
  }
}

List<TaskEntity> mapTaskModelToEntity(
  List<TaskModel> modelList,
) {
  return modelList
      .map(
        (e) => TaskEntity(
          id: e.id,
          name: e.name,
          description: e.description,
          endDateName: e.endedAt.toString(),
          markId: e.markId,
        ),
      )
      .toList();
}
