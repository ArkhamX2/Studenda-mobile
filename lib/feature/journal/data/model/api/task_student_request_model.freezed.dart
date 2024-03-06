// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_student_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskStudentRequestModel {
  List<int> get asigneeUserIds => throw _privateConstructorUsedError;
  int? get disciplineId => throw _privateConstructorUsedError;
  int? get subjectTypeId => throw _privateConstructorUsedError;
  int? get academicYear => throw _privateConstructorUsedError;
  TokenModel get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStudentRequestModelCopyWith<TaskStudentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStudentRequestModelCopyWith<$Res> {
  factory $TaskStudentRequestModelCopyWith(TaskStudentRequestModel value,
          $Res Function(TaskStudentRequestModel) then) =
      _$TaskStudentRequestModelCopyWithImpl<$Res, TaskStudentRequestModel>;
  @useResult
  $Res call(
      {List<int> asigneeUserIds,
      int? disciplineId,
      int? subjectTypeId,
      int? academicYear,
      TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$TaskStudentRequestModelCopyWithImpl<$Res,
        $Val extends TaskStudentRequestModel>
    implements $TaskStudentRequestModelCopyWith<$Res> {
  _$TaskStudentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asigneeUserIds = null,
    Object? disciplineId = freezed,
    Object? subjectTypeId = freezed,
    Object? academicYear = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      asigneeUserIds: null == asigneeUserIds
          ? _value.asigneeUserIds
          : asigneeUserIds // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TaskStudentRequestModelImplCopyWith<$Res>
    implements $TaskStudentRequestModelCopyWith<$Res> {
  factory _$$TaskStudentRequestModelImplCopyWith(
          _$TaskStudentRequestModelImpl value,
          $Res Function(_$TaskStudentRequestModelImpl) then) =
      __$$TaskStudentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> asigneeUserIds,
      int? disciplineId,
      int? subjectTypeId,
      int? academicYear,
      TokenModel token});

  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$TaskStudentRequestModelImplCopyWithImpl<$Res>
    extends _$TaskStudentRequestModelCopyWithImpl<$Res,
        _$TaskStudentRequestModelImpl>
    implements _$$TaskStudentRequestModelImplCopyWith<$Res> {
  __$$TaskStudentRequestModelImplCopyWithImpl(
      _$TaskStudentRequestModelImpl _value,
      $Res Function(_$TaskStudentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asigneeUserIds = null,
    Object? disciplineId = freezed,
    Object? subjectTypeId = freezed,
    Object? academicYear = freezed,
    Object? token = null,
  }) {
    return _then(_$TaskStudentRequestModelImpl(
      asigneeUserIds: null == asigneeUserIds
          ? _value._asigneeUserIds
          : asigneeUserIds // ignore: cast_nullable_to_non_nullable
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

class _$TaskStudentRequestModelImpl implements _TaskStudentRequestModel {
  const _$TaskStudentRequestModelImpl(
      {required final List<int> asigneeUserIds,
      required this.disciplineId,
      required this.subjectTypeId,
      required this.academicYear,
      required this.token})
      : _asigneeUserIds = asigneeUserIds;

  final List<int> _asigneeUserIds;
  @override
  List<int> get asigneeUserIds {
    if (_asigneeUserIds is EqualUnmodifiableListView) return _asigneeUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asigneeUserIds);
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
    return 'TaskStudentRequestModel(asigneeUserIds: $asigneeUserIds, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, academicYear: $academicYear, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStudentRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other._asigneeUserIds, _asigneeUserIds) &&
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
      const DeepCollectionEquality().hash(_asigneeUserIds),
      disciplineId,
      subjectTypeId,
      academicYear,
      token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStudentRequestModelImplCopyWith<_$TaskStudentRequestModelImpl>
      get copyWith => __$$TaskStudentRequestModelImplCopyWithImpl<
          _$TaskStudentRequestModelImpl>(this, _$identity);
}

abstract class _TaskStudentRequestModel implements TaskStudentRequestModel {
  const factory _TaskStudentRequestModel(
      {required final List<int> asigneeUserIds,
      required final int? disciplineId,
      required final int? subjectTypeId,
      required final int? academicYear,
      required final TokenModel token}) = _$TaskStudentRequestModelImpl;

  @override
  List<int> get asigneeUserIds;
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
  _$$TaskStudentRequestModelImplCopyWith<_$TaskStudentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
