import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_entity.freezed.dart';

@freezed
class SubjectEntity with _$SubjectEntity {


  const factory SubjectEntity({
    required int id,
    required String title,
    required String classroom,
    required String teacher,
    required int dayTime,
  }) = _SubjectEntity;

}
