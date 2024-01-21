// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectModelImpl _$$SubjectModelImplFromJson(Map<String, dynamic> json) =>
    _$SubjectModelImpl(
      id: json['id'] as int,
      disciplineId: json['disciplineId'] as int,
      subjectTypeId: json['subjectTypeId'] as int,
      userId: json['userId'] as int,
      classroom: json['classroom'] as String,
      subjectPositionId: json['subjectPositionId'] as int,
      weekPositionId: json['dayPositionId'] as int,
    );

Map<String, dynamic> _$$SubjectModelImplToJson(_$SubjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplineId': instance.disciplineId,
      'subjectTypeId': instance.subjectTypeId,
      'userId': instance.userId,
      'classroom': instance.classroom,
      'subjectPositionId': instance.subjectPositionId,
      'dayPositionId': instance.weekPositionId,
    };
