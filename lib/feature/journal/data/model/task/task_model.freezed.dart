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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(name: 'teacherId')
  @HiveField(3)
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  @HiveField(4)
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(5)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  @HiveField(6)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @HiveField(7)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  @HiveField(8)
  DateTime get updatedAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'teacherId') @HiveField(3) int teacherId,
      @JsonKey(name: 'studentId') @HiveField(4) int studentId,
      @JsonKey(name: 'name') @HiveField(5) String name,
      @JsonKey(name: 'description') @HiveField(6) String description,
      @JsonKey(name: 'createdAt') @HiveField(7) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(8) DateTime updatedAt});
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
    Object? teacherId = null,
    Object? studentId = null,
    Object? name = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: 'teacherId') @HiveField(3) int teacherId,
      @JsonKey(name: 'studentId') @HiveField(4) int studentId,
      @JsonKey(name: 'name') @HiveField(5) String name,
      @JsonKey(name: 'description') @HiveField(6) String description,
      @JsonKey(name: 'createdAt') @HiveField(7) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(8) DateTime updatedAt});
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
    Object? teacherId = null,
    Object? studentId = null,
    Object? name = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
@HiveType(typeId: 13, adapterName: 'TaskModelAdapter')
class _$TaskModelImpl extends _TaskModel {
  _$TaskModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'disciplineId') @HiveField(1) required this.disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) required this.subjectTypeId,
      @JsonKey(name: 'teacherId') @HiveField(3) required this.teacherId,
      @JsonKey(name: 'studentId') @HiveField(4) required this.studentId,
      @JsonKey(name: 'name') @HiveField(5) required this.name,
      @JsonKey(name: 'description') @HiveField(6) required this.description,
      @JsonKey(name: 'createdAt') @HiveField(7) required this.createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(8) required this.updatedAt})
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
  @JsonKey(name: 'teacherId')
  @HiveField(3)
  final int teacherId;
  @override
  @JsonKey(name: 'studentId')
  @HiveField(4)
  final int studentId;
  @override
  @JsonKey(name: 'name')
  @HiveField(5)
  final String name;
  @override
  @JsonKey(name: 'description')
  @HiveField(6)
  final String description;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(7)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(8)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TaskModel(id: $id, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, teacherId: $teacherId, studentId: $studentId, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, disciplineId, subjectTypeId,
      teacherId, studentId, name, description, createdAt, updatedAt);

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
      @JsonKey(name: 'teacherId') @HiveField(3) required final int teacherId,
      @JsonKey(name: 'studentId') @HiveField(4) required final int studentId,
      @JsonKey(name: 'name') @HiveField(5) required final String name,
      @JsonKey(name: 'description')
      @HiveField(6)
      required final String description,
      @JsonKey(name: 'createdAt')
      @HiveField(7)
      required final DateTime createdAt,
      @JsonKey(name: 'updatedAt')
      @HiveField(8)
      required final DateTime updatedAt}) = _$TaskModelImpl;
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
  @JsonKey(name: 'teacherId')
  @HiveField(3)
  int get teacherId;
  @override
  @JsonKey(name: 'studentId')
  @HiveField(4)
  int get studentId;
  @override
  @JsonKey(name: 'name')
  @HiveField(5)
  String get name;
  @override
  @JsonKey(name: 'description')
  @HiveField(6)
  String get description;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(7)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(8)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
