part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.success(List<TaskEntity> tasks) = _Success;
  const factory TaskState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory TaskState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory TaskState.localLoadingSuccess(List<TaskEntity> tasks) = _LocalLoadingSuccess;
}
