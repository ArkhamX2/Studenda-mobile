import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';

part 'course_entity.freezed.dart';

@Freezed(
  toStringOverride: false,
)
class CourseEntity with _$CourseEntity {
  const factory CourseEntity({
    required int id,
    required String? name,
    required int grade,
  }) = _CourseEntity;

  const CourseEntity._();

  factory CourseEntity.fromModel(CourseModel model) =>
      CourseEntity(id: model.id, name: model.name, grade: model.grade);

  @override
  String toString() {
    return grade.toString();
  }
}
