// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroupModelAdapter extends TypeAdapter<_$GroupModelImpl> {
  @override
  final int typeId = 3;

  @override
  _$GroupModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$GroupModelImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      courseId: fields[2] as int?,
      departmentId: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$GroupModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.courseId)
      ..writeByte(3)
      ..write(obj.departmentId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupModelImpl _$$GroupModelImplFromJson(Map<String, dynamic> json) =>
    _$GroupModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      courseId: json['courseId'] as int?,
      departmentId: json['departmentId'] as int?,
    );

Map<String, dynamic> _$$GroupModelImplToJson(_$GroupModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'courseId': instance.courseId,
      'departmentId': instance.departmentId,
    };
