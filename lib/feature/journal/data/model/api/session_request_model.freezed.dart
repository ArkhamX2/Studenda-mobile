// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionRequestModel {
  int get subjectId => throw _privateConstructorUsedError;
  List<DateTime> get dates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionRequestModelCopyWith<SessionRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRequestModelCopyWith<$Res> {
  factory $SessionRequestModelCopyWith(
          SessionRequestModel value, $Res Function(SessionRequestModel) then) =
      _$SessionRequestModelCopyWithImpl<$Res, SessionRequestModel>;
  @useResult
  $Res call({int subjectId, List<DateTime> dates});
}

/// @nodoc
class _$SessionRequestModelCopyWithImpl<$Res, $Val extends SessionRequestModel>
    implements $SessionRequestModelCopyWith<$Res> {
  _$SessionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? dates = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionRequestModelImplCopyWith<$Res>
    implements $SessionRequestModelCopyWith<$Res> {
  factory _$$SessionRequestModelImplCopyWith(_$SessionRequestModelImpl value,
          $Res Function(_$SessionRequestModelImpl) then) =
      __$$SessionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subjectId, List<DateTime> dates});
}

/// @nodoc
class __$$SessionRequestModelImplCopyWithImpl<$Res>
    extends _$SessionRequestModelCopyWithImpl<$Res, _$SessionRequestModelImpl>
    implements _$$SessionRequestModelImplCopyWith<$Res> {
  __$$SessionRequestModelImplCopyWithImpl(_$SessionRequestModelImpl _value,
      $Res Function(_$SessionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? dates = null,
  }) {
    return _then(_$SessionRequestModelImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$SessionRequestModelImpl implements _SessionRequestModel {
  const _$SessionRequestModelImpl(
      {required this.subjectId, required final List<DateTime> dates})
      : _dates = dates;

  @override
  final int subjectId;
  final List<DateTime> _dates;
  @override
  List<DateTime> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'SessionRequestModel(subjectId: $subjectId, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRequestModelImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, subjectId, const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRequestModelImplCopyWith<_$SessionRequestModelImpl> get copyWith =>
      __$$SessionRequestModelImplCopyWithImpl<_$SessionRequestModelImpl>(
          this, _$identity);
}

abstract class _SessionRequestModel implements SessionRequestModel {
  const factory _SessionRequestModel(
      {required final int subjectId,
      required final List<DateTime> dates}) = _$SessionRequestModelImpl;

  @override
  int get subjectId;
  @override
  List<DateTime> get dates;
  @override
  @JsonKey(ignore: true)
  _$$SessionRequestModelImplCopyWith<_$SessionRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
