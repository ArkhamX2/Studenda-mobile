// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectModelAdapter extends TypeAdapter<_$SubjectModelImpl> {
  @override
  final int typeId = 6;

  @override
  _$SubjectModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectModelImpl(
      id: fields[0] as int,
      disciplineId: fields[1] as int,
      subjectTypeId: fields[2] as int,
      userId: fields[3] as int,
      classroom: fields[4] as String,
      subjectPositionId: fields[5] as int,
      dayPositionId: fields[6] as int,
      groupId: fields[7] as int,
      weekTypeId: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectModelImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.disciplineId)
      ..writeByte(2)
      ..write(obj.subjectTypeId)
      ..writeByte(3)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.classroom)
      ..writeByte(5)
      ..write(obj.subjectPositionId)
      ..writeByte(6)
      ..write(obj.dayPositionId)
      ..writeByte(7)
      ..write(obj.groupId)
      ..writeByte(8)
      ..write(obj.weekTypeId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      dayPositionId: json['dayPositionId'] as int,
      groupId: json['groupId'] as int,
      weekTypeId: json['weekTypeId'] as int,
    );

Map<String, dynamic> _$$SubjectModelImplToJson(_$SubjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplineId': instance.disciplineId,
      'subjectTypeId': instance.subjectTypeId,
      'userId': instance.userId,
      'classroom': instance.classroom,
      'subjectPositionId': instance.subjectPositionId,
      'dayPositionId': instance.dayPositionId,
      'groupId': instance.groupId,
      'weekTypeId': instance.weekTypeId,
    };
