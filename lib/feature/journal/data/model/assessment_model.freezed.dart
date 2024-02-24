// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssessmentModel _$AssessmentModelFromJson(Map<String, dynamic> json) {
  return _AssessmentModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'assessmentTypeId')
  @HiveField(1)
  int get assessmentTypeId => throw _privateConstructorUsedError;
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
  $AssessmentModelCopyWith<AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentModelCopyWith<$Res> {
  factory $AssessmentModelCopyWith(
          AssessmentModel value, $Res Function(AssessmentModel) then) =
      _$AssessmentModelCopyWithImpl<$Res, AssessmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'assessmentTypeId') @HiveField(1) int assessmentTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) int taskId,
      @JsonKey(name: 'value') @HiveField(3) int value,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res, $Val extends AssessmentModel>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assessmentTypeId = null,
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
      assessmentTypeId: null == assessmentTypeId
          ? _value.assessmentTypeId
          : assessmentTypeId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AssessmentModelImplCopyWith<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  factory _$$AssessmentModelImplCopyWith(_$AssessmentModelImpl value,
          $Res Function(_$AssessmentModelImpl) then) =
      __$$AssessmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'assessmentTypeId') @HiveField(1) int assessmentTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) int taskId,
      @JsonKey(name: 'value') @HiveField(3) int value,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class __$$AssessmentModelImplCopyWithImpl<$Res>
    extends _$AssessmentModelCopyWithImpl<$Res, _$AssessmentModelImpl>
    implements _$$AssessmentModelImplCopyWith<$Res> {
  __$$AssessmentModelImplCopyWithImpl(
      _$AssessmentModelImpl _value, $Res Function(_$AssessmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assessmentTypeId = null,
    Object? taskId = null,
    Object? value = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AssessmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assessmentTypeId: null == assessmentTypeId
          ? _value.assessmentTypeId
          : assessmentTypeId // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 12, adapterName: 'AssessmentModelAdapter')
class _$AssessmentModelImpl extends _AssessmentModel {
  _$AssessmentModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'assessmentTypeId')
      @HiveField(1)
      required this.assessmentTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) required this.taskId,
      @JsonKey(name: 'value') @HiveField(3) required this.value,
      @JsonKey(name: 'createdAt') @HiveField(4) required this.createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) required this.updatedAt})
      : super._();

  factory _$AssessmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'assessmentTypeId')
  @HiveField(1)
  final int assessmentTypeId;
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
    return 'AssessmentModel(id: $id, assessmentTypeId: $assessmentTypeId, taskId: $taskId, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assessmentTypeId, assessmentTypeId) ||
                other.assessmentTypeId == assessmentTypeId) &&
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
      runtimeType, id, assessmentTypeId, taskId, value, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentModelImplCopyWith<_$AssessmentModelImpl> get copyWith =>
      __$$AssessmentModelImplCopyWithImpl<_$AssessmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentModelImplToJson(
      this,
    );
  }
}

abstract class _AssessmentModel extends AssessmentModel {
  factory _AssessmentModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'assessmentTypeId')
      @HiveField(1)
      required final int assessmentTypeId,
      @JsonKey(name: 'taskId') @HiveField(2) required final int taskId,
      @JsonKey(name: 'value') @HiveField(3) required final int value,
      @JsonKey(name: 'createdAt')
      @HiveField(4)
      required final DateTime createdAt,
      @JsonKey(name: 'updatedAt')
      @HiveField(5)
      required final DateTime updatedAt}) = _$AssessmentModelImpl;
  _AssessmentModel._() : super._();

  factory _AssessmentModel.fromJson(Map<String, dynamic> json) =
      _$AssessmentModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'assessmentTypeId')
  @HiveField(1)
  int get assessmentTypeId;
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
  _$$AssessmentModelImplCopyWith<_$AssessmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
