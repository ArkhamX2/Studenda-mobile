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
      value: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$MarkModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.markTypeId)
      ..writeByte(2)
      ..write(obj.value);
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
      value: json['value'] as int,
    );

Map<String, dynamic> _$$MarkModelImplToJson(_$MarkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'markTypeId': instance.markTypeId,
      'value': instance.value,
    };
