import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendancy_mark_entity.freezed.dart';

@freezed
class AttendancyMarkEntity with _$AttendancyMarkEntity{
  const factory AttendancyMarkEntity({
      required int id,
      required String markDateName,
      required String weekTypeName,
      required bool value,
    }) = _AttendancyMarkEntity;
}
