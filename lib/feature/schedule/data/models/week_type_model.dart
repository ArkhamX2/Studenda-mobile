
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_type_model.freezed.dart';
part 'week_type_model.g.dart';

@freezed
class WeekTypeModel with _$WeekTypeModel{

  const factory WeekTypeModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'index') required int index,
  }) = _WeekTypeModel;

  
  factory WeekTypeModel.fromJson(Map<String,dynamic> json) => _$WeekTypeModelFromJson(json);
}
