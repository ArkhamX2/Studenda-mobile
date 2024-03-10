// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubjectEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get classroom => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  List<GroupEntity> get groups => throw _privateConstructorUsedError;
  String get subjectTypeName => throw _privateConstructorUsedError;
  int get subjectPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectEntityCopyWith<SubjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEntityCopyWith<$Res> {
  factory $SubjectEntityCopyWith(
          SubjectEntity value, $Res Function(SubjectEntity) then) =
      _$SubjectEntityCopyWithImpl<$Res, SubjectEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? classroom,
      String? teacher,
      List<GroupEntity> groups,
      String subjectTypeName,
      int subjectPosition});
}

/// @nodoc
class _$SubjectEntityCopyWithImpl<$Res, $Val extends SubjectEntity>
    implements $SubjectEntityCopyWith<$Res> {
  _$SubjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? classroom = freezed,
    Object? teacher = freezed,
    Object? groups = null,
    Object? subjectTypeName = null,
    Object? subjectPosition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      subjectTypeName: null == subjectTypeName
          ? _value.subjectTypeName
          : subjectTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPosition: null == subjectPosition
          ? _value.subjectPosition
          : subjectPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectEntityImplCopyWith<$Res>
    implements $SubjectEntityCopyWith<$Res> {
  factory _$$SubjectEntityImplCopyWith(
          _$SubjectEntityImpl value, $Res Function(_$SubjectEntityImpl) then) =
      __$$SubjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? classroom,
      String? teacher,
      List<GroupEntity> groups,
      String subjectTypeName,
      int subjectPosition});
}

/// @nodoc
class __$$SubjectEntityImplCopyWithImpl<$Res>
    extends _$SubjectEntityCopyWithImpl<$Res, _$SubjectEntityImpl>
    implements _$$SubjectEntityImplCopyWith<$Res> {
  __$$SubjectEntityImplCopyWithImpl(
      _$SubjectEntityImpl _value, $Res Function(_$SubjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? classroom = freezed,
    Object? teacher = freezed,
    Object? groups = null,
    Object? subjectTypeName = null,
    Object? subjectPosition = null,
  }) {
    return _then(_$SubjectEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      subjectTypeName: null == subjectTypeName
          ? _value.subjectTypeName
          : subjectTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPosition: null == subjectPosition
          ? _value.subjectPosition
          : subjectPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubjectEntityImpl implements _SubjectEntity {
  const _$SubjectEntityImpl(
      {required this.id,
      required this.title,
      required this.classroom,
      required this.teacher,
      required final List<GroupEntity> groups,
      required this.subjectTypeName,
      required this.subjectPosition})
      : _groups = groups;

  @override
  final int id;
  @override
  final String title;
  @override
  final String? classroom;
  @override
  final String? teacher;
  final List<GroupEntity> _groups;
  @override
  List<GroupEntity> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final String subjectTypeName;
  @override
  final int subjectPosition;

  @override
  String toString() {
    return 'SubjectEntity(id: $id, title: $title, classroom: $classroom, teacher: $teacher, groups: $groups, subjectTypeName: $subjectTypeName, subjectPosition: $subjectPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.subjectTypeName, subjectTypeName) ||
                other.subjectTypeName == subjectTypeName) &&
            (identical(other.subjectPosition, subjectPosition) ||
                other.subjectPosition == subjectPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      classroom,
      teacher,
      const DeepCollectionEquality().hash(_groups),
      subjectTypeName,
      subjectPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectEntityImplCopyWith<_$SubjectEntityImpl> get copyWith =>
      __$$SubjectEntityImplCopyWithImpl<_$SubjectEntityImpl>(this, _$identity);
}

abstract class _SubjectEntity implements SubjectEntity {
  const factory _SubjectEntity(
      {required final int id,
      required final String title,
      required final String? classroom,
      required final String? teacher,
      required final List<GroupEntity> groups,
      required final String subjectTypeName,
      required final int subjectPosition}) = _$SubjectEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get classroom;
  @override
  String? get teacher;
  @override
  List<GroupEntity> get groups;
  @override
  String get subjectTypeName;
  @override
  int get subjectPosition;
  @override
  @JsonKey(ignore: true)
  _$$SubjectEntityImplCopyWith<_$SubjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
