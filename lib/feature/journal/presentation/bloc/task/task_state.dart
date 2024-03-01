part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.success(List<TaskEntity> schedule) = _Success;
  const factory TaskState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory TaskState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory TaskState.localLoadingSuccess(List<TaskEntity> schedule) = _LocalLoadingSuccess;
}
