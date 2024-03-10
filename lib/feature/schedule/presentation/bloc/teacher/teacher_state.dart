part of 'teacher_cubit.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState.initial() = TeacherInitial;
  const factory TeacherState.success(List<AccountEntity> teacherList) = TeacherSuccess;
  const factory TeacherState.fail([@Default("Unknown error") String message]) = TeacherFail;
  const factory TeacherState.localLoadingFail([@Default("Unknown error") String message]) = TeacherLocalLoadingFail;
  const factory TeacherState.localLoadingSuccess(List<AccountEntity> teacherList) = TeacherLocalLoadingSuccess;
}
