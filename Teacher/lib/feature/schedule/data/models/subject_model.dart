// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed

class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'disciplineId') required int disciplineId,
    @JsonKey(name: 'subjectTypeId') required int subjectTypeId,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'classroom') required String classroom,
    @JsonKey(name: 'subjectPositionId') required int subjectPositionId,
    @JsonKey(name: 'dayPositionId') required int dayPositionId,
  }) = _SubjectModel;

  
  factory SubjectModel.fromJson(Map<String,dynamic> json) => _$SubjectModelFromJson(json);
}
