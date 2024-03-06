// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_issuer_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskIssuerRequestModel {
  int get issuerId => throw _privateConstructorUsedError;
  List<int> get groupIds => throw _privateConstructorUsedError;
  int? get disciplineId => throw _privateConstructorUsedError;
  int? get subjectTypeId => throw _privateConstructorUsedError;
  int? get academicYear => throw _privateConstructorUsedError;
  TokenModel get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskIssuerRequestModelCopyWith<TaskIssuerRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskIssuerRequestModelCopyWith<$Res> {
  factory $TaskIssuerRequestModelCopyWith(TaskIssuerRequestModel value,
          $Res Function(TaskIssuerRequestModel) then) =
      _$TaskIssuerRequestModelCopyWithImpl<$Res, TaskIssuerRequestModel>;
  @useResult
  $Res call(
      {int issuerId,
      List<int> groupIds,
      int? disciplineId,
      int? subjectTypeId,
      int? academicYear,
      TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$TaskIssuerRequestModelCopyWithImpl<$Res,
        $Val extends TaskIssuerRequestModel>
    implements $TaskIssuerRequestModelCopyWith<$Res> {
  _$TaskIssuerRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerId = null,
    Object? groupIds = null,
    Object? disciplineId = freezed,
    Object? subjectTypeId = freezed,
    Object? academicYear = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      issuerId: null == issuerId
          ? _value.issuerId
          : issuerId // ignore: cast_nullable_to_non_nullable
              as int,
      groupIds: null == groupIds
          ? _value.groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disciplineId: freezed == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectTypeId: freezed == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      academicYear: freezed == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$TaskIssuerRequestModelImplCopyWith<$Res>
    implements $TaskIssuerRequestModelCopyWith<$Res> {
  factory _$$TaskIssuerRequestModelImplCopyWith(
          _$TaskIssuerRequestModelImpl value,
          $Res Function(_$TaskIssuerRequestModelImpl) then) =
      __$$TaskIssuerRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int issuerId,
      List<int> groupIds,
      int? disciplineId,
      int? subjectTypeId,
      int? academicYear,
      TokenModel token});

  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$TaskIssuerRequestModelImplCopyWithImpl<$Res>
    extends _$TaskIssuerRequestModelCopyWithImpl<$Res,
        _$TaskIssuerRequestModelImpl>
    implements _$$TaskIssuerRequestModelImplCopyWith<$Res> {
  __$$TaskIssuerRequestModelImplCopyWithImpl(
      _$TaskIssuerRequestModelImpl _value,
      $Res Function(_$TaskIssuerRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerId = null,
    Object? groupIds = null,
    Object? disciplineId = freezed,
    Object? subjectTypeId = freezed,
    Object? academicYear = freezed,
    Object? token = null,
  }) {
    return _then(_$TaskIssuerRequestModelImpl(
      issuerId: null == issuerId
          ? _value.issuerId
          : issuerId // ignore: cast_nullable_to_non_nullable
              as int,
      groupIds: null == groupIds
          ? _value._groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disciplineId: freezed == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectTypeId: freezed == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      academicYear: freezed == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as int?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }
}

/// @nodoc

class _$TaskIssuerRequestModelImpl implements _TaskIssuerRequestModel {
  const _$TaskIssuerRequestModelImpl(
      {required this.issuerId,
      required final List<int> groupIds,
      required this.disciplineId,
      required this.subjectTypeId,
      required this.academicYear,
      required this.token})
      : _groupIds = groupIds;

  @override
  final int issuerId;
  final List<int> _groupIds;
  @override
  List<int> get groupIds {
    if (_groupIds is EqualUnmodifiableListView) return _groupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIds);
  }

  @override
  final int? disciplineId;
  @override
  final int? subjectTypeId;
  @override
  final int? academicYear;
  @override
  final TokenModel token;

  @override
  String toString() {
    return 'TaskIssuerRequestModel(issuerId: $issuerId, groupIds: $groupIds, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, academicYear: $academicYear, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskIssuerRequestModelImpl &&
            (identical(other.issuerId, issuerId) ||
                other.issuerId == issuerId) &&
            const DeepCollectionEquality().equals(other._groupIds, _groupIds) &&
            (identical(other.disciplineId, disciplineId) ||
                other.disciplineId == disciplineId) &&
            (identical(other.subjectTypeId, subjectTypeId) ||
                other.subjectTypeId == subjectTypeId) &&
            (identical(other.academicYear, academicYear) ||
                other.academicYear == academicYear) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      issuerId,
      const DeepCollectionEquality().hash(_groupIds),
      disciplineId,
      subjectTypeId,
      academicYear,
      token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskIssuerRequestModelImplCopyWith<_$TaskIssuerRequestModelImpl>
      get copyWith => __$$TaskIssuerRequestModelImplCopyWithImpl<
          _$TaskIssuerRequestModelImpl>(this, _$identity);
}

abstract class _TaskIssuerRequestModel implements TaskIssuerRequestModel {
  const factory _TaskIssuerRequestModel(
      {required final int issuerId,
      required final List<int> groupIds,
      required final int? disciplineId,
      required final int? subjectTypeId,
      required final int? academicYear,
      required final TokenModel token}) = _$TaskIssuerRequestModelImpl;

  @override
  int get issuerId;
  @override
  List<int> get groupIds;
  @override
  int? get disciplineId;
  @override
  int? get subjectTypeId;
  @override
  int? get academicYear;
  @override
  TokenModel get token;
  @override
  @JsonKey(ignore: true)
  _$$TaskIssuerRequestModelImplCopyWith<_$TaskIssuerRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
