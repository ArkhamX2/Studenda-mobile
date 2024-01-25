// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_type_model.freezed.dart';
part 'subject_type_model.g.dart';

@freezed

class SubjectTypeModel with _$SubjectTypeModel{
  const factory SubjectTypeModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _SubjectTypeModel;

  
  factory SubjectTypeModel.fromJson(Map<String,dynamic> json) => _$SubjectTypeModelFromJson(json);
}
