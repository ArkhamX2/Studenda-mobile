// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectModelImpl _$$SubjectModelImplFromJson(Map<String, dynamic> json) =>
    _$SubjectModelImpl(
      id: json['Id'] as int,
      discipline:
          DisciplineModel.fromJson(json['Discipline'] as Map<String, dynamic>),
      user: UserModel.fromJson(json['User'] as Map<String, dynamic>),
      classroom: json['Classroom'] as String,
      subjectPositionId: json['SubjectPositionId'] as int,
      weekPositionId: json['WeekPositionId'] as int,
    );

Map<String, dynamic> _$$SubjectModelImplToJson(_$SubjectModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Discipline': instance.discipline,
      'User': instance.user,
      'Classroom': instance.classroom,
      'SubjectPositionId': instance.subjectPositionId,
      'WeekPositionId': instance.weekPositionId,
    };
