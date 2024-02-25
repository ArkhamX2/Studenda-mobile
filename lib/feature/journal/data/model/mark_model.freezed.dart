// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkModel _$MarkModelFromJson(Map<String, dynamic> json) {
  return _MarkModel.fromJson(json);
}

/// @nodoc
mixin _$MarkModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'markTypeId')
  @HiveField(1)
  int get markTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'taskId')
  @HiveField(2)
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  @HiveField(3)
  int get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkModelCopyWith<MarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkModelCopyWith<$Res> {
  factory $MarkModelCopyWith(MarkModel value, $Res Function(MarkModel) then) =
      _$MarkModelCopyWithImpl<$Res, MarkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'markTypeId') @HiveField(1) int markTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) int taskId,
      @JsonKey(name: 'value') @HiveField(3) int value,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class _$MarkModelCopyWithImpl<$Res, $Val extends MarkModel>
    implements $MarkModelCopyWith<$Res> {
  _$MarkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? markTypeId = null,
    Object? taskId = null,
    Object? value = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      markTypeId: null == markTypeId
          ? _value.markTypeId
          : markTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkModelImplCopyWith<$Res>
    implements $MarkModelCopyWith<$Res> {
  factory _$$MarkModelImplCopyWith(
          _$MarkModelImpl value, $Res Function(_$MarkModelImpl) then) =
      __$$MarkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'markTypeId') @HiveField(1) int markTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) int taskId,
      @JsonKey(name: 'value') @HiveField(3) int value,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class __$$MarkModelImplCopyWithImpl<$Res>
    extends _$MarkModelCopyWithImpl<$Res, _$MarkModelImpl>
    implements _$$MarkModelImplCopyWith<$Res> {
  __$$MarkModelImplCopyWithImpl(
      _$MarkModelImpl _value, $Res Function(_$MarkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? markTypeId = null,
    Object? taskId = null,
    Object? value = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MarkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      markTypeId: null == markTypeId
          ? _value.markTypeId
          : markTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 12, adapterName: 'MarkModelAdapter')
class _$MarkModelImpl extends _MarkModel {
  _$MarkModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'markTypeId') @HiveField(1) required this.markTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) required this.taskId,
      @JsonKey(name: 'value') @HiveField(3) required this.value,
      @JsonKey(name: 'createdAt') @HiveField(4) required this.createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) required this.updatedAt})
      : super._();

  factory _$MarkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'markTypeId')
  @HiveField(1)
  final int markTypeId;
  @override
  @JsonKey(name: 'taskId')
  @HiveField(2)
  final int taskId;
  @override
  @JsonKey(name: 'value')
  @HiveField(3)
  final int value;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MarkModel(id: $id, markTypeId: $markTypeId, taskId: $taskId, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.markTypeId, markTypeId) ||
                other.markTypeId == markTypeId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, markTypeId, taskId, value, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkModelImplCopyWith<_$MarkModelImpl> get copyWith =>
      __$$MarkModelImplCopyWithImpl<_$MarkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkModelImplToJson(
      this,
    );
  }
}

abstract class _MarkModel extends MarkModel {
  factory _MarkModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'markTypeId') @HiveField(1) required final int markTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) required final int taskId,
      @JsonKey(name: 'value') @HiveField(3) required final int value,
      @JsonKey(name: 'createdAt')
      @HiveField(4)
      required final DateTime createdAt,
      @JsonKey(name: 'updatedAt')
      @HiveField(5)
      required final DateTime updatedAt}) = _$MarkModelImpl;
  _MarkModel._() : super._();

  factory _MarkModel.fromJson(Map<String, dynamic> json) =
      _$MarkModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'markTypeId')
  @HiveField(1)
  int get markTypeId;
  @override
  @JsonKey(name: 'taskId')
  @HiveField(2)
  int get taskId;
  @override
  @JsonKey(name: 'value')
  @HiveField(3)
  int get value;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MarkModelImplCopyWith<_$MarkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
