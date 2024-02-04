// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectTypeModelAdapter extends TypeAdapter<_$SubjectTypeModelImpl> {
  @override
  final int typeId = 8;

  @override
  _$SubjectTypeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectTypeModelImpl(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectTypeModelImpl obj) {
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
      other is SubjectTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectTypeModelImpl _$$SubjectTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectTypeModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SubjectTypeModelImplToJson(
        _$SubjectTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
