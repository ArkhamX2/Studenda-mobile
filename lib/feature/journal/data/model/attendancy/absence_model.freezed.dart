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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbsenceModel _$AbsenceModelFromJson(Map<String, dynamic> json) {
  return _AbsenceModel.fromJson(json);
}

/// @nodoc
mixin _$AbsenceModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  @HiveField(1)
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjectId')
  @HiveField(2)
  int get subjectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @HiveField(3)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  @HiveField(4)
  DateTime get updatedAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'studentId') @HiveField(1) int studentId,
      @JsonKey(name: 'subjectId') @HiveField(2) int subjectId,
      @JsonKey(name: 'createdAt') @HiveField(3) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(4) DateTime updatedAt});
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
    Object? studentId = null,
    Object? subjectId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AbsenceModelImplCopyWith<$Res>
    implements $AbsenceModelCopyWith<$Res> {
  factory _$$AbsenceModelImplCopyWith(
          _$AbsenceModelImpl value, $Res Function(_$AbsenceModelImpl) then) =
      __$$AbsenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'studentId') @HiveField(1) int studentId,
      @JsonKey(name: 'subjectId') @HiveField(2) int subjectId,
      @JsonKey(name: 'createdAt') @HiveField(3) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(4) DateTime updatedAt});
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
    Object? studentId = null,
    Object? subjectId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AbsenceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 10, adapterName: 'AbsenceModelAdapter')
class _$AbsenceModelImpl extends _AbsenceModel {
  _$AbsenceModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'studentId') @HiveField(1) required this.studentId,
      @JsonKey(name: 'subjectId') @HiveField(2) required this.subjectId,
      @JsonKey(name: 'createdAt') @HiveField(3) required this.createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(4) required this.updatedAt})
      : super._();

  factory _$AbsenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbsenceModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'studentId')
  @HiveField(1)
  final int studentId;
  @override
  @JsonKey(name: 'subjectId')
  @HiveField(2)
  final int subjectId;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(3)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(4)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AbsenceModel(id: $id, studentId: $studentId, subjectId: $subjectId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, studentId, subjectId, createdAt, updatedAt);

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
      @JsonKey(name: 'studentId') @HiveField(1) required final int studentId,
      @JsonKey(name: 'subjectId') @HiveField(2) required final int subjectId,
      @JsonKey(name: 'createdAt')
      @HiveField(3)
      required final DateTime createdAt,
      @JsonKey(name: 'updatedAt')
      @HiveField(4)
      required final DateTime updatedAt}) = _$AbsenceModelImpl;
  _AbsenceModel._() : super._();

  factory _AbsenceModel.fromJson(Map<String, dynamic> json) =
      _$AbsenceModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'studentId')
  @HiveField(1)
  int get studentId;
  @override
  @JsonKey(name: 'subjectId')
  @HiveField(2)
  int get subjectId;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(3)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(4)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceModelImplCopyWith<_$AbsenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
