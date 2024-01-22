import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_entity.freezed.dart';

@Freezed(toStringOverride: false,)
class CourseEntity with _$CourseEntity{
  const factory CourseEntity({
    required int id,
    required String name,
  }) = _CourseEntity;

  const CourseEntity._();

  @override
  String toString() {
    return name;
  }
}
