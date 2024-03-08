// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkRequestModel {
  List<int> get markIds => throw _privateConstructorUsedError;
  TokenModel get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarkRequestModelCopyWith<MarkRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkRequestModelCopyWith<$Res> {
  factory $MarkRequestModelCopyWith(
          MarkRequestModel value, $Res Function(MarkRequestModel) then) =
      _$MarkRequestModelCopyWithImpl<$Res, MarkRequestModel>;
  @useResult
  $Res call({List<int> markIds, TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$MarkRequestModelCopyWithImpl<$Res, $Val extends MarkRequestModel>
    implements $MarkRequestModelCopyWith<$Res> {
  _$MarkRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markIds = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      markIds: null == markIds
          ? _value.markIds
          : markIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenModelCopyWith<$Res> get token {
    return $TokenModelCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarkRequestModelImplCopyWith<$Res>
    implements $MarkRequestModelCopyWith<$Res> {
  factory _$$MarkRequestModelImplCopyWith(_$MarkRequestModelImpl value,
          $Res Function(_$MarkRequestModelImpl) then) =
      __$$MarkRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> markIds, TokenModel token});

  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$MarkRequestModelImplCopyWithImpl<$Res>
    extends _$MarkRequestModelCopyWithImpl<$Res, _$MarkRequestModelImpl>
    implements _$$MarkRequestModelImplCopyWith<$Res> {
  __$$MarkRequestModelImplCopyWithImpl(_$MarkRequestModelImpl _value,
      $Res Function(_$MarkRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markIds = null,
    Object? token = null,
  }) {
    return _then(_$MarkRequestModelImpl(
      markIds: null == markIds
          ? _value._markIds
          : markIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }
}

/// @nodoc

class _$MarkRequestModelImpl implements _MarkRequestModel {
  const _$MarkRequestModelImpl(
      {required final List<int> markIds, required this.token})
      : _markIds = markIds;

  final List<int> _markIds;
  @override
  List<int> get markIds {
    if (_markIds is EqualUnmodifiableListView) return _markIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markIds);
  }

  @override
  final TokenModel token;

  @override
  String toString() {
    return 'MarkRequestModel(markIds: $markIds, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkRequestModelImpl &&
            const DeepCollectionEquality().equals(other._markIds, _markIds) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_markIds), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkRequestModelImplCopyWith<_$MarkRequestModelImpl> get copyWith =>
      __$$MarkRequestModelImplCopyWithImpl<_$MarkRequestModelImpl>(
          this, _$identity);
}

abstract class _MarkRequestModel implements MarkRequestModel {
  const factory _MarkRequestModel(
      {required final List<int> markIds,
      required final TokenModel token}) = _$MarkRequestModelImpl;

  @override
  List<int> get markIds;
  @override
  TokenModel get token;
  @override
  @JsonKey(ignore: true)
  _$$MarkRequestModelImplCopyWith<_$MarkRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
