// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskModelAdapter extends TypeAdapter<_$TaskModelImpl> {
  @override
  final int typeId = 13;

  @override
  _$TaskModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TaskModelImpl(
      id: fields[0] as int,
      disciplineId: fields[1] as int,
      subjectTypeId: fields[2] as int,
      issuerAccountId: fields[3] as int,
      asigneeAccountId: fields[4] as int,
      markId: fields[5] as int,
      name: fields[6] as String,
      description: fields[7] as String,
      startedAt: fields[8] as DateTime,
      endedAt: fields[9] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$TaskModelImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.disciplineId)
      ..writeByte(2)
      ..write(obj.subjectTypeId)
      ..writeByte(3)
      ..write(obj.issuerAccountId)
      ..writeByte(4)
      ..write(obj.asigneeAccountId)
      ..writeByte(5)
      ..write(obj.markId)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.startedAt)
      ..writeByte(9)
      ..write(obj.endedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as int,
      disciplineId: json['disciplineId'] as int,
      subjectTypeId: json['subjectTypeId'] as int,
      issuerAccountId: json['issuerAccountId'] as int,
      asigneeAccountId: json['asigneeAccountId'] as int,
      markId: json['markId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplineId': instance.disciplineId,
      'subjectTypeId': instance.subjectTypeId,
      'issuerAccountId': instance.issuerAccountId,
      'asigneeAccountId': instance.asigneeAccountId,
      'markId': instance.markId,
      'name': instance.name,
      'description': instance.description,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
    };
