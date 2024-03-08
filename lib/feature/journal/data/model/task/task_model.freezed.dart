// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'disciplineId')
  @HiveField(1)
  int get disciplineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjectTypeId')
  @HiveField(2)
  int get subjectTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuerAccountId')
  @HiveField(3)
  int get issuerAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'asigneeAccountId')
  @HiveField(4)
  int get asigneeAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'markId')
  @HiveField(5)
  int get markId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(6)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  @HiveField(7)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'startedAt')
  @HiveField(8)
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'endedAt')
  @HiveField(9)
  DateTime? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'disciplineId') @HiveField(1) int disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) int subjectTypeId,
      @JsonKey(name: 'issuerAccountId') @HiveField(3) int issuerAccountId,
      @JsonKey(name: 'asigneeAccountId') @HiveField(4) int asigneeAccountId,
      @JsonKey(name: 'markId') @HiveField(5) int markId,
      @JsonKey(name: 'name') @HiveField(6) String name,
      @JsonKey(name: 'description') @HiveField(7) String description,
      @JsonKey(name: 'startedAt') @HiveField(8) DateTime startedAt,
      @JsonKey(name: 'endedAt') @HiveField(9) DateTime? endedAt});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disciplineId = null,
    Object? subjectTypeId = null,
    Object? issuerAccountId = null,
    Object? asigneeAccountId = null,
    Object? markId = null,
    Object? name = null,
    Object? description = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disciplineId: null == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectTypeId: null == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      issuerAccountId: null == issuerAccountId
          ? _value.issuerAccountId
          : issuerAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      asigneeAccountId: null == asigneeAccountId
          ? _value.asigneeAccountId
          : asigneeAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      markId: null == markId
          ? _value.markId
          : markId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'disciplineId') @HiveField(1) int disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) int subjectTypeId,
      @JsonKey(name: 'issuerAccountId') @HiveField(3) int issuerAccountId,
      @JsonKey(name: 'asigneeAccountId') @HiveField(4) int asigneeAccountId,
      @JsonKey(name: 'markId') @HiveField(5) int markId,
      @JsonKey(name: 'name') @HiveField(6) String name,
      @JsonKey(name: 'description') @HiveField(7) String description,
      @JsonKey(name: 'startedAt') @HiveField(8) DateTime startedAt,
      @JsonKey(name: 'endedAt') @HiveField(9) DateTime? endedAt});
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disciplineId = null,
    Object? subjectTypeId = null,
    Object? issuerAccountId = null,
    Object? asigneeAccountId = null,
    Object? markId = null,
    Object? name = null,
    Object? description = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
  }) {
    return _then(_$TaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disciplineId: null == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectTypeId: null == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      issuerAccountId: null == issuerAccountId
          ? _value.issuerAccountId
          : issuerAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      asigneeAccountId: null == asigneeAccountId
          ? _value.asigneeAccountId
          : asigneeAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      markId: null == markId
          ? _value.markId
          : markId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 13, adapterName: 'TaskModelAdapter')
class _$TaskModelImpl extends _TaskModel {
  _$TaskModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'disciplineId') @HiveField(1) required this.disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) required this.subjectTypeId,
      @JsonKey(name: 'issuerAccountId')
      @HiveField(3)
      required this.issuerAccountId,
      @JsonKey(name: 'asigneeAccountId')
      @HiveField(4)
      required this.asigneeAccountId,
      @JsonKey(name: 'markId') @HiveField(5) required this.markId,
      @JsonKey(name: 'name') @HiveField(6) required this.name,
      @JsonKey(name: 'description') @HiveField(7) required this.description,
      @JsonKey(name: 'startedAt') @HiveField(8) required this.startedAt,
      @JsonKey(name: 'endedAt') @HiveField(9) required this.endedAt})
      : super._();

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'disciplineId')
  @HiveField(1)
  final int disciplineId;
  @override
  @JsonKey(name: 'subjectTypeId')
  @HiveField(2)
  final int subjectTypeId;
  @override
  @JsonKey(name: 'issuerAccountId')
  @HiveField(3)
  final int issuerAccountId;
  @override
  @JsonKey(name: 'asigneeAccountId')
  @HiveField(4)
  final int asigneeAccountId;
  @override
  @JsonKey(name: 'markId')
  @HiveField(5)
  final int markId;
  @override
  @JsonKey(name: 'name')
  @HiveField(6)
  final String name;
  @override
  @JsonKey(name: 'description')
  @HiveField(7)
  final String description;
  @override
  @JsonKey(name: 'startedAt')
  @HiveField(8)
  final DateTime startedAt;
  @override
  @JsonKey(name: 'endedAt')
  @HiveField(9)
  final DateTime? endedAt;

  @override
  String toString() {
    return 'TaskModel(id: $id, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, issuerAccountId: $issuerAccountId, asigneeAccountId: $asigneeAccountId, markId: $markId, name: $name, description: $description, startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disciplineId, disciplineId) ||
                other.disciplineId == disciplineId) &&
            (identical(other.subjectTypeId, subjectTypeId) ||
                other.subjectTypeId == subjectTypeId) &&
            (identical(other.issuerAccountId, issuerAccountId) ||
                other.issuerAccountId == issuerAccountId) &&
            (identical(other.asigneeAccountId, asigneeAccountId) ||
                other.asigneeAccountId == asigneeAccountId) &&
            (identical(other.markId, markId) || other.markId == markId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      disciplineId,
      subjectTypeId,
      issuerAccountId,
      asigneeAccountId,
      markId,
      name,
      description,
      startedAt,
      endedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel extends TaskModel {
  factory _TaskModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'disciplineId')
      @HiveField(1)
      required final int disciplineId,
      @JsonKey(name: 'subjectTypeId')
      @HiveField(2)
      required final int subjectTypeId,
      @JsonKey(name: 'issuerAccountId')
      @HiveField(3)
      required final int issuerAccountId,
      @JsonKey(name: 'asigneeAccountId')
      @HiveField(4)
      required final int asigneeAccountId,
      @JsonKey(name: 'markId') @HiveField(5) required final int markId,
      @JsonKey(name: 'name') @HiveField(6) required final String name,
      @JsonKey(name: 'description')
      @HiveField(7)
      required final String description,
      @JsonKey(name: 'startedAt')
      @HiveField(8)
      required final DateTime startedAt,
      @JsonKey(name: 'endedAt')
      @HiveField(9)
      required final DateTime? endedAt}) = _$TaskModelImpl;
  _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'disciplineId')
  @HiveField(1)
  int get disciplineId;
  @override
  @JsonKey(name: 'subjectTypeId')
  @HiveField(2)
  int get subjectTypeId;
  @override
  @JsonKey(name: 'issuerAccountId')
  @HiveField(3)
  int get issuerAccountId;
  @override
  @JsonKey(name: 'asigneeAccountId')
  @HiveField(4)
  int get asigneeAccountId;
  @override
  @JsonKey(name: 'markId')
  @HiveField(5)
  int get markId;
  @override
  @JsonKey(name: 'name')
  @HiveField(6)
  String get name;
  @override
  @JsonKey(name: 'description')
  @HiveField(7)
  String get description;
  @override
  @JsonKey(name: 'startedAt')
  @HiveField(8)
  DateTime get startedAt;
  @override
  @JsonKey(name: 'endedAt')
  @HiveField(9)
  DateTime? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
