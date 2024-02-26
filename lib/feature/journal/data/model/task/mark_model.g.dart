// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarkModelAdapter extends TypeAdapter<_$MarkModelImpl> {
  @override
  final int typeId = 12;

  @override
  _$MarkModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MarkModelImpl(
      id: fields[0] as int,
      markTypeId: fields[1] as int,
      taskId: fields[2] as int,
      value: fields[3] as int,
      createdAt: fields[4] as DateTime,
      updatedAt: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$MarkModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.markTypeId)
      ..writeByte(2)
      ..write(obj.taskId)
      ..writeByte(3)
      ..write(obj.value)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarkModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkModelImpl _$$MarkModelImplFromJson(Map<String, dynamic> json) =>
    _$MarkModelImpl(
      id: json['id'] as int,
      markTypeId: json['markTypeId'] as int,
      taskId: json['taskId'] as int,
      value: json['value'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MarkModelImplToJson(_$MarkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'markTypeId': instance.markTypeId,
      'taskId': instance.taskId,
      'value': instance.value,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
