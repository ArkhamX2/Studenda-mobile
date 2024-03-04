// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'absence_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AbsenceRequestModel {
  int get accountId => throw _privateConstructorUsedError;
  List<int> get sessionIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbsenceRequestModelCopyWith<AbsenceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceRequestModelCopyWith<$Res> {
  factory $AbsenceRequestModelCopyWith(
          AbsenceRequestModel value, $Res Function(AbsenceRequestModel) then) =
      _$AbsenceRequestModelCopyWithImpl<$Res, AbsenceRequestModel>;
  @useResult
  $Res call({int accountId, List<int> sessionIds});
}

/// @nodoc
class _$AbsenceRequestModelCopyWithImpl<$Res, $Val extends AbsenceRequestModel>
    implements $AbsenceRequestModelCopyWith<$Res> {
  _$AbsenceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? sessionIds = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      sessionIds: null == sessionIds
          ? _value.sessionIds
          : sessionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbsenceRequestModelImplCopyWith<$Res>
    implements $AbsenceRequestModelCopyWith<$Res> {
  factory _$$AbsenceRequestModelImplCopyWith(_$AbsenceRequestModelImpl value,
          $Res Function(_$AbsenceRequestModelImpl) then) =
      __$$AbsenceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountId, List<int> sessionIds});
}

/// @nodoc
class __$$AbsenceRequestModelImplCopyWithImpl<$Res>
    extends _$AbsenceRequestModelCopyWithImpl<$Res, _$AbsenceRequestModelImpl>
    implements _$$AbsenceRequestModelImplCopyWith<$Res> {
  __$$AbsenceRequestModelImplCopyWithImpl(_$AbsenceRequestModelImpl _value,
      $Res Function(_$AbsenceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? sessionIds = null,
  }) {
    return _then(_$AbsenceRequestModelImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      sessionIds: null == sessionIds
          ? _value._sessionIds
          : sessionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AbsenceRequestModelImpl implements _AbsenceRequestModel {
  const _$AbsenceRequestModelImpl(
      {required this.accountId, required final List<int> sessionIds})
      : _sessionIds = sessionIds;

  @override
  final int accountId;
  final List<int> _sessionIds;
  @override
  List<int> get sessionIds {
    if (_sessionIds is EqualUnmodifiableListView) return _sessionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessionIds);
  }

  @override
  String toString() {
    return 'AbsenceRequestModel(accountId: $accountId, sessionIds: $sessionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceRequestModelImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality()
                .equals(other._sessionIds, _sessionIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, const DeepCollectionEquality().hash(_sessionIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenceRequestModelImplCopyWith<_$AbsenceRequestModelImpl> get copyWith =>
      __$$AbsenceRequestModelImplCopyWithImpl<_$AbsenceRequestModelImpl>(
          this, _$identity);
}

abstract class _AbsenceRequestModel implements AbsenceRequestModel {
  const factory _AbsenceRequestModel(
      {required final int accountId,
      required final List<int> sessionIds}) = _$AbsenceRequestModelImpl;

  @override
  int get accountId;
  @override
  List<int> get sessionIds;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceRequestModelImplCopyWith<_$AbsenceRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
