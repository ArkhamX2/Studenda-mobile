// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssessmentEntity {
  int get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssessmentEntityCopyWith<AssessmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentEntityCopyWith<$Res> {
  factory $AssessmentEntityCopyWith(
          AssessmentEntity value, $Res Function(AssessmentEntity) then) =
      _$AssessmentEntityCopyWithImpl<$Res, AssessmentEntity>;
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class _$AssessmentEntityCopyWithImpl<$Res, $Val extends AssessmentEntity>
    implements $AssessmentEntityCopyWith<$Res> {
  _$AssessmentEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$AssessmentEntityImplCopyWith<$Res>
    implements $AssessmentEntityCopyWith<$Res> {
  factory _$$AssessmentEntityImplCopyWith(_$AssessmentEntityImpl value,
          $Res Function(_$AssessmentEntityImpl) then) =
      __$$AssessmentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class __$$AssessmentEntityImplCopyWithImpl<$Res>
    extends _$AssessmentEntityCopyWithImpl<$Res, _$AssessmentEntityImpl>
    implements _$$AssessmentEntityImplCopyWith<$Res> {
  __$$AssessmentEntityImplCopyWithImpl(_$AssessmentEntityImpl _value,
      $Res Function(_$AssessmentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$AssessmentEntityImpl(
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

class _$AssessmentEntityImpl implements _AssessmentEntity {
  const _$AssessmentEntityImpl({required this.id, required this.value});

  @override
  final int id;
  @override
  final int value;

  @override
  String toString() {
    return 'AssessmentEntity(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentEntityImplCopyWith<_$AssessmentEntityImpl> get copyWith =>
      __$$AssessmentEntityImplCopyWithImpl<_$AssessmentEntityImpl>(
          this, _$identity);
}

abstract class _AssessmentEntity implements AssessmentEntity {
  const factory _AssessmentEntity(
      {required final int id,
      required final int value}) = _$AssessmentEntityImpl;

  @override
  int get id;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$AssessmentEntityImplCopyWith<_$AssessmentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
