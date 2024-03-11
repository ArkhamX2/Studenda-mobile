// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_position_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayPositionModelAdapter extends TypeAdapter<_$DayPositionModelImpl> {
  @override
  final int typeId = 4;

  @override
  _$DayPositionModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DayPositionModelImpl(
      id: fields[0] as int,
      index: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$DayPositionModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayPositionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayPositionModelImpl _$$DayPositionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DayPositionModelImpl(
      id: json['id'] as int,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$DayPositionModelImplToJson(
        _$DayPositionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
    };
