// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discipline_model.freezed.dart';
part 'discipline_model.g.dart';

@freezed

class DisciplineModel with _$DisciplineModel{
  const factory DisciplineModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _DisciplineModel;

  
  factory DisciplineModel.fromJson(Map<String,dynamic> json) => _$DisciplineModelFromJson(json);
}
