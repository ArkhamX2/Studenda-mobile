import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_entity.freezed.dart';

@freezed
class AssessmentEntity with _$AssessmentEntity{
  const factory AssessmentEntity({
      required int id,
      required int value,
    }) = _AssessmentEntity;
}
