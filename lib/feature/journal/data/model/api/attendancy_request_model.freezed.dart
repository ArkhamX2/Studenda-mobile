// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendancy_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendancyRequestModel {
  AbsenceRequestModel get userId => throw _privateConstructorUsedError;
  List<ScheduleEntity> get subject => throw _privateConstructorUsedError;
  TokenModel get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendancyRequestModelCopyWith<AttendancyRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancyRequestModelCopyWith<$Res> {
  factory $AttendancyRequestModelCopyWith(AttendancyRequestModel value,
          $Res Function(AttendancyRequestModel) then) =
      _$AttendancyRequestModelCopyWithImpl<$Res, AttendancyRequestModel>;
  @useResult
  $Res call(
      {AbsenceRequestModel userId,
      List<ScheduleEntity> subject,
      TokenModel token});

  $AbsenceRequestModelCopyWith<$Res> get userId;
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$AttendancyRequestModelCopyWithImpl<$Res,
        $Val extends AttendancyRequestModel>
    implements $AttendancyRequestModelCopyWith<$Res> {
  _$AttendancyRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subject = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as AbsenceRequestModel,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbsenceRequestModelCopyWith<$Res> get userId {
    return $AbsenceRequestModelCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
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
abstract class _$$AttendancyRequestModelImplCopyWith<$Res>
    implements $AttendancyRequestModelCopyWith<$Res> {
  factory _$$AttendancyRequestModelImplCopyWith(
          _$AttendancyRequestModelImpl value,
          $Res Function(_$AttendancyRequestModelImpl) then) =
      __$$AttendancyRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AbsenceRequestModel userId,
      List<ScheduleEntity> subject,
      TokenModel token});

  @override
  $AbsenceRequestModelCopyWith<$Res> get userId;
  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$AttendancyRequestModelImplCopyWithImpl<$Res>
    extends _$AttendancyRequestModelCopyWithImpl<$Res,
        _$AttendancyRequestModelImpl>
    implements _$$AttendancyRequestModelImplCopyWith<$Res> {
  __$$AttendancyRequestModelImplCopyWithImpl(
      _$AttendancyRequestModelImpl _value,
      $Res Function(_$AttendancyRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subject = null,
    Object? token = null,
  }) {
    return _then(_$AttendancyRequestModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as AbsenceRequestModel,
      subject: null == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }
}

/// @nodoc

class _$AttendancyRequestModelImpl implements _AttendancyRequestModel {
  const _$AttendancyRequestModelImpl(
      {required this.userId,
      required final List<ScheduleEntity> subject,
      required this.token})
      : _subject = subject;

  @override
  final AbsenceRequestModel userId;
  final List<ScheduleEntity> _subject;
  @override
  List<ScheduleEntity> get subject {
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subject);
  }

  @override
  final TokenModel token;

  @override
  String toString() {
    return 'AttendancyRequestModel(userId: $userId, subject: $subject, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendancyRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._subject, _subject) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId,
      const DeepCollectionEquality().hash(_subject), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendancyRequestModelImplCopyWith<_$AttendancyRequestModelImpl>
      get copyWith => __$$AttendancyRequestModelImplCopyWithImpl<
          _$AttendancyRequestModelImpl>(this, _$identity);
}

abstract class _AttendancyRequestModel implements AttendancyRequestModel {
  const factory _AttendancyRequestModel(
      {required final AbsenceRequestModel userId,
      required final List<ScheduleEntity> subject,
      required final TokenModel token}) = _$AttendancyRequestModelImpl;

  @override
  AbsenceRequestModel get userId;
  @override
  List<ScheduleEntity> get subject;
  @override
  TokenModel get token;
  @override
  @JsonKey(ignore: true)
  _$$AttendancyRequestModelImplCopyWith<_$AttendancyRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
