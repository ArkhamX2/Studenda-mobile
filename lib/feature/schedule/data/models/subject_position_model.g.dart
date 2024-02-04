// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_position_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectPositionModelAdapter
    extends TypeAdapter<_$SubjectPositionModelImpl> {
  @override
  final int typeId = 7;

  @override
  _$SubjectPositionModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectPositionModelImpl(
      id: fields[0] as int,
      index: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectPositionModelImpl obj) {
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
      other is SubjectPositionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectPositionModelImpl _$$SubjectPositionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectPositionModelImpl(
      id: json['id'] as int,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$SubjectPositionModelImplToJson(
        _$SubjectPositionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
    };
