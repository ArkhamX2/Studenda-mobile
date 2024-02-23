// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendancy_mark_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendancyMartEntity {
  int get weekPosition => throw _privateConstructorUsedError;
  List<SubjectEntity> get subjects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendancyMartEntityCopyWith<AttendancyMartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancyMartEntityCopyWith<$Res> {
  factory $AttendancyMartEntityCopyWith(AttendancyMartEntity value,
          $Res Function(AttendancyMartEntity) then) =
      _$AttendancyMartEntityCopyWithImpl<$Res, AttendancyMartEntity>;
  @useResult
  $Res call({int weekPosition, List<SubjectEntity> subjects});
}

/// @nodoc
class _$AttendancyMartEntityCopyWithImpl<$Res,
        $Val extends AttendancyMartEntity>
    implements $AttendancyMartEntityCopyWith<$Res> {
  _$AttendancyMartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekPosition = null,
    Object? subjects = null,
  }) {
    return _then(_value.copyWith(
      weekPosition: null == weekPosition
          ? _value.weekPosition
          : weekPosition // ignore: cast_nullable_to_non_nullable
              as int,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendancyMartEntityImplCopyWith<$Res>
    implements $AttendancyMartEntityCopyWith<$Res> {
  factory _$$AttendancyMartEntityImplCopyWith(_$AttendancyMartEntityImpl value,
          $Res Function(_$AttendancyMartEntityImpl) then) =
      __$$AttendancyMartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weekPosition, List<SubjectEntity> subjects});
}

/// @nodoc
class __$$AttendancyMartEntityImplCopyWithImpl<$Res>
    extends _$AttendancyMartEntityCopyWithImpl<$Res, _$AttendancyMartEntityImpl>
    implements _$$AttendancyMartEntityImplCopyWith<$Res> {
  __$$AttendancyMartEntityImplCopyWithImpl(_$AttendancyMartEntityImpl _value,
      $Res Function(_$AttendancyMartEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekPosition = null,
    Object? subjects = null,
  }) {
    return _then(_$AttendancyMartEntityImpl(
      weekPosition: null == weekPosition
          ? _value.weekPosition
          : weekPosition // ignore: cast_nullable_to_non_nullable
              as int,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectEntity>,
    ));
  }
}

/// @nodoc

class _$AttendancyMartEntityImpl implements _AttendancyMartEntity {
  const _$AttendancyMartEntityImpl(
      {required this.weekPosition, required final List<SubjectEntity> subjects})
      : _subjects = subjects;

  @override
  final int weekPosition;
  final List<SubjectEntity> _subjects;
  @override
  List<SubjectEntity> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'AttendancyMartEntity(weekPosition: $weekPosition, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendancyMartEntityImpl &&
            (identical(other.weekPosition, weekPosition) ||
                other.weekPosition == weekPosition) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekPosition,
      const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendancyMartEntityImplCopyWith<_$AttendancyMartEntityImpl>
      get copyWith =>
          __$$AttendancyMartEntityImplCopyWithImpl<_$AttendancyMartEntityImpl>(
              this, _$identity);
}

abstract class _AttendancyMartEntity implements AttendancyMartEntity {
  const factory _AttendancyMartEntity(
          {required final int weekPosition,
          required final List<SubjectEntity> subjects}) =
      _$AttendancyMartEntityImpl;

  @override
  int get weekPosition;
  @override
  List<SubjectEntity> get subjects;
  @override
  @JsonKey(ignore: true)
  _$$AttendancyMartEntityImplCopyWith<_$AttendancyMartEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
