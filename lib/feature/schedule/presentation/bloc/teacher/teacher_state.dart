part of 'teacher_cubit.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState.initial() = _Initial;
  const factory TeacherState.success(List<AccountEntity> teacherList) = _Success;
  const factory TeacherState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory TeacherState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory TeacherState.localLoadingSuccess(List<AccountEntity> teacherList) = _LocalLoadingSuccess;
}
