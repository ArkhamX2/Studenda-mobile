// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkEntity {
  int get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarkEntityCopyWith<MarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkEntityCopyWith<$Res> {
  factory $MarkEntityCopyWith(
          MarkEntity value, $Res Function(MarkEntity) then) =
      _$MarkEntityCopyWithImpl<$Res, MarkEntity>;
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class _$MarkEntityCopyWithImpl<$Res, $Val extends MarkEntity>
    implements $MarkEntityCopyWith<$Res> {
  _$MarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkEntityImplCopyWith<$Res>
    implements $MarkEntityCopyWith<$Res> {
  factory _$$MarkEntityImplCopyWith(
          _$MarkEntityImpl value, $Res Function(_$MarkEntityImpl) then) =
      __$$MarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class __$$MarkEntityImplCopyWithImpl<$Res>
    extends _$MarkEntityCopyWithImpl<$Res, _$MarkEntityImpl>
    implements _$$MarkEntityImplCopyWith<$Res> {
  __$$MarkEntityImplCopyWithImpl(
      _$MarkEntityImpl _value, $Res Function(_$MarkEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$MarkEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MarkEntityImpl implements _MarkEntity {
  const _$MarkEntityImpl({required this.id, required this.value});

  @override
  final int id;
  @override
  final int value;

  @override
  String toString() {
    return 'MarkEntity(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkEntityImplCopyWith<_$MarkEntityImpl> get copyWith =>
      __$$MarkEntityImplCopyWithImpl<_$MarkEntityImpl>(this, _$identity);
}

abstract class _MarkEntity implements MarkEntity {
  const factory _MarkEntity({required final int id, required final int value}) =
      _$MarkEntityImpl;

  @override
  int get id;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$MarkEntityImplCopyWith<_$MarkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
