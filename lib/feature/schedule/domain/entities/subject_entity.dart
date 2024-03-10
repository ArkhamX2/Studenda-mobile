import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';

part 'subject_entity.freezed.dart';

@freezed
class SubjectEntity with _$SubjectEntity {


  const factory SubjectEntity({
    required int id,
    required String title,
    required String? classroom,
    required String? teacher,
    required List<GroupEntity> groups,
    required String subjectTypeName,
    required int subjectPosition,
  }) = _SubjectEntity;
}
