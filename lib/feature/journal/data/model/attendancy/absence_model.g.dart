// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AbsenceModelAdapter extends TypeAdapter<_$AbsenceModelImpl> {
  @override
  final int typeId = 10;

  @override
  _$AbsenceModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AbsenceModelImpl(
      id: fields[0] as int,
      accountId: fields[1] as int,
      sessionId: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$AbsenceModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.accountId)
      ..writeByte(2)
      ..write(obj.sessionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbsenceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbsenceModelImpl _$$AbsenceModelImplFromJson(Map<String, dynamic> json) =>
    _$AbsenceModelImpl(
      id: json['id'] as int,
      accountId: json['accountId'] as int,
      sessionId: json['sessionId'] as int,
    );

Map<String, dynamic> _$$AbsenceModelImplToJson(_$AbsenceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'sessionId': instance.sessionId,
    };
