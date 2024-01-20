// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_position_model.freezed.dart';
part 'subject_position_model.g.dart';

@freezed

class SubjectPositionModel with $SubjectPositionModel{
  const factory SubjectPositionModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'index') required int index,
  }) = _SubjectPositionModel;

  
  factory SubjectPositionModel.fromJson(Map<String,dynamic> json) => _$SubjectPositionModelFromJson(json);
}
