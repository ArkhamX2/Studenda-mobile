// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_list_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupListRequestModel {
  List<int> get groupIds => throw _privateConstructorUsedError;
  TokenModel get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupListRequestModelCopyWith<GroupListRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupListRequestModelCopyWith<$Res> {
  factory $GroupListRequestModelCopyWith(GroupListRequestModel value,
          $Res Function(GroupListRequestModel) then) =
      _$GroupListRequestModelCopyWithImpl<$Res, GroupListRequestModel>;
  @useResult
  $Res call({List<int> groupIds, TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$GroupListRequestModelCopyWithImpl<$Res,
        $Val extends GroupListRequestModel>
    implements $GroupListRequestModelCopyWith<$Res> {
  _$GroupListRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupIds = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      groupIds: null == groupIds
          ? _value.groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GroupListRequestModelImplCopyWith<$Res>
    implements $GroupListRequestModelCopyWith<$Res> {
  factory _$$GroupListRequestModelImplCopyWith(
          _$GroupListRequestModelImpl value,
          $Res Function(_$GroupListRequestModelImpl) then) =
      __$$GroupListRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> groupIds, TokenModel token});

  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$GroupListRequestModelImplCopyWithImpl<$Res>
    extends _$GroupListRequestModelCopyWithImpl<$Res,
        _$GroupListRequestModelImpl>
    implements _$$GroupListRequestModelImplCopyWith<$Res> {
  __$$GroupListRequestModelImplCopyWithImpl(_$GroupListRequestModelImpl _value,
      $Res Function(_$GroupListRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupIds = null,
    Object? token = null,
  }) {
    return _then(_$GroupListRequestModelImpl(
      groupIds: null == groupIds
          ? _value._groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }
}

/// @nodoc

class _$GroupListRequestModelImpl implements _GroupListRequestModel {
  const _$GroupListRequestModelImpl(
      {required final List<int> groupIds, required this.token})
      : _groupIds = groupIds;

  final List<int> _groupIds;
  @override
  List<int> get groupIds {
    if (_groupIds is EqualUnmodifiableListView) return _groupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIds);
  }

  @override
  final TokenModel token;

  @override
  String toString() {
    return 'GroupListRequestModel(groupIds: $groupIds, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupListRequestModelImpl &&
            const DeepCollectionEquality().equals(other._groupIds, _groupIds) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groupIds), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupListRequestModelImplCopyWith<_$GroupListRequestModelImpl>
      get copyWith => __$$GroupListRequestModelImplCopyWithImpl<
          _$GroupListRequestModelImpl>(this, _$identity);
}

abstract class _GroupListRequestModel implements GroupListRequestModel {
  const factory _GroupListRequestModel(
      {required final List<int> groupIds,
      required final TokenModel token}) = _$GroupListRequestModelImpl;

  @override
  List<int> get groupIds;
  @override
  TokenModel get token;
  @override
  @JsonKey(ignore: true)
  _$$GroupListRequestModelImplCopyWith<_$GroupListRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
