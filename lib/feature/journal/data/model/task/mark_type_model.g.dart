// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AssessmentTypeModelAdapter extends TypeAdapter<_$MarkTypeModelImpl> {
  @override
  final int typeId = 11;

  @override
  _$MarkTypeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MarkTypeModelImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      minValue: fields[2] as int,
      maxValue: fields[3] as int,
      createdAt: fields[4] as DateTime,
      updatedAt: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$MarkTypeModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.minValue)
      ..writeByte(3)
      ..write(obj.maxValue)
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
      other is AssessmentTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkTypeModelImpl _$$MarkTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$MarkTypeModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      minValue: json['minValue'] as int,
      maxValue: json['maxValue'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MarkTypeModelImplToJson(_$MarkTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
