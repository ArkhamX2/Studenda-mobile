// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendancy_mark_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttendancyMarkEntity {
  int get id => throw _privateConstructorUsedError;
  String get markDateName => throw _privateConstructorUsedError;
  String get weekTypeName => throw _privateConstructorUsedError;
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendancyMarkEntityCopyWith<AttendancyMarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancyMarkEntityCopyWith<$Res> {
  factory $AttendancyMarkEntityCopyWith(AttendancyMarkEntity value,
          $Res Function(AttendancyMarkEntity) then) =
      _$AttendancyMarkEntityCopyWithImpl<$Res, AttendancyMarkEntity>;
  @useResult
  $Res call({int id, String markDateName, String weekTypeName, bool value});
}

/// @nodoc
class _$AttendancyMarkEntityCopyWithImpl<$Res,
        $Val extends AttendancyMarkEntity>
    implements $AttendancyMarkEntityCopyWith<$Res> {
  _$AttendancyMarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? markDateName = null,
    Object? weekTypeName = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      markDateName: null == markDateName
          ? _value.markDateName
          : markDateName // ignore: cast_nullable_to_non_nullable
              as String,
      weekTypeName: null == weekTypeName
          ? _value.weekTypeName
          : weekTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendancyMarkEntityImplCopyWith<$Res>
    implements $AttendancyMarkEntityCopyWith<$Res> {
  factory _$$AttendancyMarkEntityImplCopyWith(_$AttendancyMarkEntityImpl value,
          $Res Function(_$AttendancyMarkEntityImpl) then) =
      __$$AttendancyMarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String markDateName, String weekTypeName, bool value});
}

/// @nodoc
class __$$AttendancyMarkEntityImplCopyWithImpl<$Res>
    extends _$AttendancyMarkEntityCopyWithImpl<$Res, _$AttendancyMarkEntityImpl>
    implements _$$AttendancyMarkEntityImplCopyWith<$Res> {
  __$$AttendancyMarkEntityImplCopyWithImpl(_$AttendancyMarkEntityImpl _value,
      $Res Function(_$AttendancyMarkEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? markDateName = null,
    Object? weekTypeName = null,
    Object? value = null,
  }) {
    return _then(_$AttendancyMarkEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      markDateName: null == markDateName
          ? _value.markDateName
          : markDateName // ignore: cast_nullable_to_non_nullable
              as String,
      weekTypeName: null == weekTypeName
          ? _value.weekTypeName
          : weekTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AttendancyMarkEntityImpl implements _AttendancyMarkEntity {
  const _$AttendancyMarkEntityImpl(
      {required this.id,
      required this.markDateName,
      required this.weekTypeName,
      required this.value});

  @override
  final int id;
  @override
  final String markDateName;
  @override
  final String weekTypeName;
  @override
  final bool value;

  @override
  String toString() {
    return 'AttendancyMarkEntity(id: $id, markDateName: $markDateName, weekTypeName: $weekTypeName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendancyMarkEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.markDateName, markDateName) ||
                other.markDateName == markDateName) &&
            (identical(other.weekTypeName, weekTypeName) ||
                other.weekTypeName == weekTypeName) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, markDateName, weekTypeName, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendancyMarkEntityImplCopyWith<_$AttendancyMarkEntityImpl>
      get copyWith =>
          __$$AttendancyMarkEntityImplCopyWithImpl<_$AttendancyMarkEntityImpl>(
              this, _$identity);
}

abstract class _AttendancyMarkEntity implements AttendancyMarkEntity {
  const factory _AttendancyMarkEntity(
      {required final int id,
      required final String markDateName,
      required final String weekTypeName,
      required final bool value}) = _$AttendancyMarkEntityImpl;

  @override
  int get id;
  @override
  String get markDateName;
  @override
  String get weekTypeName;
  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$AttendancyMarkEntityImplCopyWith<_$AttendancyMarkEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
