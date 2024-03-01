part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;
  const factory TaskEvent.load(List<int> asigneeUserIds, int disciplineId, int subjectTypeId, int academicYear) = _Load;
  const factory TaskEvent.loadLocal(List<int> asigneeUserIds, int disciplineId, int subjectTypeId, int academicYear) = _LoadLocal;
}
