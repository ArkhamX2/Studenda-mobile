// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/discipline_model.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed

class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Discipline') required DisciplineModel discipline,
    @JsonKey(name: 'User') required UserModel user,
    @JsonKey(name: 'Classroom') required String classroom,
    @JsonKey(name: 'SubjectPositionId') required int subjectPositionId,
    @JsonKey(name: 'WeekPositionId') required int weekPositionId,
  }) = _SubjectModel;

  
  factory SubjectModel.fromJson(Map<String,dynamic> json) => _$SubjectModelFromJson(json);
}
