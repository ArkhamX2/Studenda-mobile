// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'absence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbsenceModel _$AbsenceModelFromJson(Map<String, dynamic> json) {
  return _AbsenceModel.fromJson(json);
}

/// @nodoc
mixin _$AbsenceModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountId')
  @HiveField(1)
  int get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sessionId')
  @HiveField(2)
  int get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsenceModelCopyWith<AbsenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceModelCopyWith<$Res> {
  factory $AbsenceModelCopyWith(
          AbsenceModel value, $Res Function(AbsenceModel) then) =
      _$AbsenceModelCopyWithImpl<$Res, AbsenceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'accountId') @HiveField(1) int accountId,
      @JsonKey(name: 'sessionId') @HiveField(2) int sessionId});
}

/// @nodoc
class _$AbsenceModelCopyWithImpl<$Res, $Val extends AbsenceModel>
    implements $AbsenceModelCopyWith<$Res> {
  _$AbsenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbsenceModelImplCopyWith<$Res>
    implements $AbsenceModelCopyWith<$Res> {
  factory _$$AbsenceModelImplCopyWith(
          _$AbsenceModelImpl value, $Res Function(_$AbsenceModelImpl) then) =
      __$$AbsenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'accountId') @HiveField(1) int accountId,
      @JsonKey(name: 'sessionId') @HiveField(2) int sessionId});
}

/// @nodoc
class __$$AbsenceModelImplCopyWithImpl<$Res>
    extends _$AbsenceModelCopyWithImpl<$Res, _$AbsenceModelImpl>
    implements _$$AbsenceModelImplCopyWith<$Res> {
  __$$AbsenceModelImplCopyWithImpl(
      _$AbsenceModelImpl _value, $Res Function(_$AbsenceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? sessionId = null,
  }) {
    return _then(_$AbsenceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 10, adapterName: 'AbsenceModelAdapter')
class _$AbsenceModelImpl extends _AbsenceModel {
  _$AbsenceModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'accountId') @HiveField(1) required this.accountId,
      @JsonKey(name: 'sessionId') @HiveField(2) required this.sessionId})
      : super._();

  factory _$AbsenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbsenceModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'accountId')
  @HiveField(1)
  final int accountId;
  @override
  @JsonKey(name: 'sessionId')
  @HiveField(2)
  final int sessionId;

  @override
  String toString() {
    return 'AbsenceModel(id: $id, accountId: $accountId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenceModelImplCopyWith<_$AbsenceModelImpl> get copyWith =>
      __$$AbsenceModelImplCopyWithImpl<_$AbsenceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbsenceModelImplToJson(
      this,
    );
  }
}

abstract class _AbsenceModel extends AbsenceModel {
  factory _AbsenceModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'accountId') @HiveField(1) required final int accountId,
      @JsonKey(name: 'sessionId')
      @HiveField(2)
      required final int sessionId}) = _$AbsenceModelImpl;
  _AbsenceModel._() : super._();

  factory _AbsenceModel.fromJson(Map<String, dynamic> json) =
      _$AbsenceModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'accountId')
  @HiveField(1)
  int get accountId;
  @override
  @JsonKey(name: 'sessionId')
  @HiveField(2)
  int get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceModelImplCopyWith<_$AbsenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
