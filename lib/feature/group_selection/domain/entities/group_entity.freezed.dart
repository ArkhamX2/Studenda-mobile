// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get courseId => throw _privateConstructorUsedError;
  int get departmentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupEntityCopyWith<GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEntityCopyWith<$Res> {
  factory $GroupEntityCopyWith(
          GroupEntity value, $Res Function(GroupEntity) then) =
      _$GroupEntityCopyWithImpl<$Res, GroupEntity>;
  @useResult
  $Res call({int id, String name, int courseId, int departmentId});
}

/// @nodoc
class _$GroupEntityCopyWithImpl<$Res, $Val extends GroupEntity>
    implements $GroupEntityCopyWith<$Res> {
  _$GroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? courseId = null,
    Object? departmentId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupEntityImplCopyWith<$Res>
    implements $GroupEntityCopyWith<$Res> {
  factory _$$GroupEntityImplCopyWith(
          _$GroupEntityImpl value, $Res Function(_$GroupEntityImpl) then) =
      __$$GroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int courseId, int departmentId});
}

/// @nodoc
class __$$GroupEntityImplCopyWithImpl<$Res>
    extends _$GroupEntityCopyWithImpl<$Res, _$GroupEntityImpl>
    implements _$$GroupEntityImplCopyWith<$Res> {
  __$$GroupEntityImplCopyWithImpl(
      _$GroupEntityImpl _value, $Res Function(_$GroupEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? courseId = null,
    Object? departmentId = null,
  }) {
    return _then(_$GroupEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupEntityImpl extends _GroupEntity {
  const _$GroupEntityImpl(
      {required this.id,
      required this.name,
      required this.courseId,
      required this.departmentId})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final int courseId;
  @override
  final int departmentId;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, courseId, departmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      __$$GroupEntityImplCopyWithImpl<_$GroupEntityImpl>(this, _$identity);
}

abstract class _GroupEntity extends GroupEntity {
  const factory _GroupEntity(
      {required final int id,
      required final String name,
      required final int courseId,
      required final int departmentId}) = _$GroupEntityImpl;
  const _GroupEntity._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  int get courseId;
  @override
  int get departmentId;
  @override
  @JsonKey(ignore: true)
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
