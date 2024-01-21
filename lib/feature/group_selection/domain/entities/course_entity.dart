import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_entity.freezed.dart';

@freezed
class CourseEntity with _$CourseEntity{
  const factory CourseEntity({
    required int id,
    required String name,
  }) = _CourseEntity;
}
