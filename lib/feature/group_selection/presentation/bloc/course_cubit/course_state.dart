part of 'course_cubit.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.initial() = _Initial;
  const factory CourseState.loading() = _Loading;
  const factory CourseState.success(List<CourseEntity> courses) = _Success;
  const factory CourseState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory CourseState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory CourseState.localLoadingSuccess(List<CourseEntity> courses) = _LocalLoadingSuccess;
}
