// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekTypeEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekTypeEntityCopyWith<WeekTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekTypeEntityCopyWith<$Res> {
  factory $WeekTypeEntityCopyWith(
          WeekTypeEntity value, $Res Function(WeekTypeEntity) then) =
      _$WeekTypeEntityCopyWithImpl<$Res, WeekTypeEntity>;
  @useResult
  $Res call({int id, String? name, int index});
}

/// @nodoc
class _$WeekTypeEntityCopyWithImpl<$Res, $Val extends WeekTypeEntity>
    implements $WeekTypeEntityCopyWith<$Res> {
  _$WeekTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekTypeEntityImplCopyWith<$Res>
    implements $WeekTypeEntityCopyWith<$Res> {
  factory _$$WeekTypeEntityImplCopyWith(_$WeekTypeEntityImpl value,
          $Res Function(_$WeekTypeEntityImpl) then) =
      __$$WeekTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, int index});
}

/// @nodoc
class __$$WeekTypeEntityImplCopyWithImpl<$Res>
    extends _$WeekTypeEntityCopyWithImpl<$Res, _$WeekTypeEntityImpl>
    implements _$$WeekTypeEntityImplCopyWith<$Res> {
  __$$WeekTypeEntityImplCopyWithImpl(
      _$WeekTypeEntityImpl _value, $Res Function(_$WeekTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? index = null,
  }) {
    return _then(_$WeekTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WeekTypeEntityImpl implements _WeekTypeEntity {
  const _$WeekTypeEntityImpl(
      {required this.id, required this.name, required this.index});

  @override
  final int id;
  @override
  final String? name;
  @override
  final int index;

  @override
  String toString() {
    return 'WeekTypeEntity(id: $id, name: $name, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekTypeEntityImplCopyWith<_$WeekTypeEntityImpl> get copyWith =>
      __$$WeekTypeEntityImplCopyWithImpl<_$WeekTypeEntityImpl>(
          this, _$identity);
}

abstract class _WeekTypeEntity implements WeekTypeEntity {
  const factory _WeekTypeEntity(
      {required final int id,
      required final String? name,
      required final int index}) = _$WeekTypeEntityImpl;

  @override
  int get id;
  @override
  String? get name;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$WeekTypeEntityImplCopyWith<_$WeekTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
