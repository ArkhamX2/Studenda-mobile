part of 'course_cubit.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.initial() = _Initial;
  const factory CourseState.loading() = _Loading;
  const factory CourseState.success(List<CourseEntity> courses) = _Success;
  const factory CourseState.fail([@Default("Unknown error") String message]) = _Fail;
}
