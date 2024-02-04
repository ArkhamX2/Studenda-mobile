// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeekTypeModelAdapter extends TypeAdapter<_$WeekTypeModelImpl> {
  @override
  final int typeId = 9;

  @override
  _$WeekTypeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$WeekTypeModelImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      index: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$WeekTypeModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekTypeModelImpl _$$WeekTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$WeekTypeModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$WeekTypeModelImplToJson(_$WeekTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'index': instance.index,
    };
