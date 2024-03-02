// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) {
  return _SubjectModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'disciplineId')
  @HiveField(1)
  int get disciplineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjectTypeId')
  @HiveField(2)
  int get subjectTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  @HiveField(3)
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom')
  @HiveField(4)
  String get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjectPositionId')
  @HiveField(5)
  int get subjectPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dayPositionId')
  @HiveField(6)
  int get dayPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'groupId')
  @HiveField(7)
  int get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekTypeId')
  @HiveField(8)
  int get weekTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) then) =
      _$SubjectModelCopyWithImpl<$Res, SubjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'disciplineId') @HiveField(1) int disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) int subjectTypeId,
      @JsonKey(name: 'userId') @HiveField(3) int userId,
      @JsonKey(name: 'classroom') @HiveField(4) String classroom,
      @JsonKey(name: 'subjectPositionId') @HiveField(5) int subjectPositionId,
      @JsonKey(name: 'dayPositionId') @HiveField(6) int dayPositionId,
      @JsonKey(name: 'groupId') @HiveField(7) int groupId,
      @JsonKey(name: 'weekTypeId') @HiveField(8) int weekTypeId});
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res, $Val extends SubjectModel>
    implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._value, this._then);

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
    Object? userId = null,
    Object? classroom = null,
    Object? subjectPositionId = null,
    Object? dayPositionId = null,
    Object? groupId = null,
    Object? weekTypeId = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPositionId: null == subjectPositionId
          ? _value.subjectPositionId
          : subjectPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      dayPositionId: null == dayPositionId
          ? _value.dayPositionId
          : dayPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      weekTypeId: null == weekTypeId
          ? _value.weekTypeId
          : weekTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectModelImplCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$$SubjectModelImplCopyWith(
          _$SubjectModelImpl value, $Res Function(_$SubjectModelImpl) then) =
      __$$SubjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'disciplineId') @HiveField(1) int disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) int subjectTypeId,
      @JsonKey(name: 'userId') @HiveField(3) int userId,
      @JsonKey(name: 'classroom') @HiveField(4) String classroom,
      @JsonKey(name: 'subjectPositionId') @HiveField(5) int subjectPositionId,
      @JsonKey(name: 'dayPositionId') @HiveField(6) int dayPositionId,
      @JsonKey(name: 'groupId') @HiveField(7) int groupId,
      @JsonKey(name: 'weekTypeId') @HiveField(8) int weekTypeId});
}

/// @nodoc
class __$$SubjectModelImplCopyWithImpl<$Res>
    extends _$SubjectModelCopyWithImpl<$Res, _$SubjectModelImpl>
    implements _$$SubjectModelImplCopyWith<$Res> {
  __$$SubjectModelImplCopyWithImpl(
      _$SubjectModelImpl _value, $Res Function(_$SubjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disciplineId = null,
    Object? subjectTypeId = null,
    Object? userId = null,
    Object? classroom = null,
    Object? subjectPositionId = null,
    Object? dayPositionId = null,
    Object? groupId = null,
    Object? weekTypeId = null,
  }) {
    return _then(_$SubjectModelImpl(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPositionId: null == subjectPositionId
          ? _value.subjectPositionId
          : subjectPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      dayPositionId: null == dayPositionId
          ? _value.dayPositionId
          : dayPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      weekTypeId: null == weekTypeId
          ? _value.weekTypeId
          : weekTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'SubjectModelAdapter')
class _$SubjectModelImpl extends _SubjectModel {
  _$SubjectModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'disciplineId') @HiveField(1) required this.disciplineId,
      @JsonKey(name: 'subjectTypeId') @HiveField(2) required this.subjectTypeId,
      @JsonKey(name: 'userId') @HiveField(3) required this.userId,
      @JsonKey(name: 'classroom') @HiveField(4) required this.classroom,
      @JsonKey(name: 'subjectPositionId')
      @HiveField(5)
      required this.subjectPositionId,
      @JsonKey(name: 'dayPositionId') @HiveField(6) required this.dayPositionId,
      @JsonKey(name: 'groupId') @HiveField(7) required this.groupId,
      @JsonKey(name: 'weekTypeId') @HiveField(8) required this.weekTypeId})
      : super._();

  factory _$SubjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectModelImplFromJson(json);

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
  @JsonKey(name: 'userId')
  @HiveField(3)
  final int userId;
  @override
  @JsonKey(name: 'classroom')
  @HiveField(4)
  final String classroom;
  @override
  @JsonKey(name: 'subjectPositionId')
  @HiveField(5)
  final int subjectPositionId;
  @override
  @JsonKey(name: 'dayPositionId')
  @HiveField(6)
  final int dayPositionId;
  @override
  @JsonKey(name: 'groupId')
  @HiveField(7)
  final int groupId;
  @override
  @JsonKey(name: 'weekTypeId')
  @HiveField(8)
  final int weekTypeId;

  @override
  String toString() {
    return 'SubjectModel(id: $id, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, userId: $userId, classroom: $classroom, subjectPositionId: $subjectPositionId, dayPositionId: $dayPositionId, groupId: $groupId, weekTypeId: $weekTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disciplineId, disciplineId) ||
                other.disciplineId == disciplineId) &&
            (identical(other.subjectTypeId, subjectTypeId) ||
                other.subjectTypeId == subjectTypeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.subjectPositionId, subjectPositionId) ||
                other.subjectPositionId == subjectPositionId) &&
            (identical(other.dayPositionId, dayPositionId) ||
                other.dayPositionId == dayPositionId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.weekTypeId, weekTypeId) ||
                other.weekTypeId == weekTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, disciplineId, subjectTypeId,
      userId, classroom, subjectPositionId, dayPositionId, groupId, weekTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      __$$SubjectModelImplCopyWithImpl<_$SubjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectModel extends SubjectModel {
  factory _SubjectModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'disciplineId')
      @HiveField(1)
      required final int disciplineId,
      @JsonKey(name: 'subjectTypeId')
      @HiveField(2)
      required final int subjectTypeId,
      @JsonKey(name: 'userId') @HiveField(3) required final int userId,
      @JsonKey(name: 'classroom') @HiveField(4) required final String classroom,
      @JsonKey(name: 'subjectPositionId')
      @HiveField(5)
      required final int subjectPositionId,
      @JsonKey(name: 'dayPositionId')
      @HiveField(6)
      required final int dayPositionId,
      @JsonKey(name: 'groupId') @HiveField(7) required final int groupId,
      @JsonKey(name: 'weekTypeId')
      @HiveField(8)
      required final int weekTypeId}) = _$SubjectModelImpl;
  _SubjectModel._() : super._();

  factory _SubjectModel.fromJson(Map<String, dynamic> json) =
      _$SubjectModelImpl.fromJson;

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
  @JsonKey(name: 'userId')
  @HiveField(3)
  int get userId;
  @override
  @JsonKey(name: 'classroom')
  @HiveField(4)
  String get classroom;
  @override
  @JsonKey(name: 'subjectPositionId')
  @HiveField(5)
  int get subjectPositionId;
  @override
  @JsonKey(name: 'dayPositionId')
  @HiveField(6)
  int get dayPositionId;
  @override
  @JsonKey(name: 'groupId')
  @HiveField(7)
  int get groupId;
  @override
  @JsonKey(name: 'weekTypeId')
  @HiveField(8)
  int get weekTypeId;
  @override
  @JsonKey(ignore: true)
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
