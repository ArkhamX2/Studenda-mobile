// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discipline_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DisciplineModelAdapter extends TypeAdapter<_$DisciplineModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$DisciplineModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DisciplineModelImpl(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$DisciplineModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisciplineModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisciplineModelImpl _$$DisciplineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DisciplineModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DisciplineModelImplToJson(
        _$DisciplineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
