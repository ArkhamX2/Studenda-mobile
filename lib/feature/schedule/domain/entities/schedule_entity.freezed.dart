// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEntity {
  List<String> get weekDays => throw _privateConstructorUsedError;
  WeekTypeEntity get weekType => throw _privateConstructorUsedError;
  List<DayScheduleEntity> get schedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEntityCopyWith<ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntityCopyWith<$Res> {
  factory $ScheduleEntityCopyWith(
          ScheduleEntity value, $Res Function(ScheduleEntity) then) =
      _$ScheduleEntityCopyWithImpl<$Res, ScheduleEntity>;
  @useResult
  $Res call(
      {List<String> weekDays,
      WeekTypeEntity weekType,
      List<DayScheduleEntity> schedule});

  $WeekTypeEntityCopyWith<$Res> get weekType;
}

/// @nodoc
class _$ScheduleEntityCopyWithImpl<$Res, $Val extends ScheduleEntity>
    implements $ScheduleEntityCopyWith<$Res> {
  _$ScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDays = null,
    Object? weekType = null,
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weekType: null == weekType
          ? _value.weekType
          : weekType // ignore: cast_nullable_to_non_nullable
              as WeekTypeEntity,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<DayScheduleEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekTypeEntityCopyWith<$Res> get weekType {
    return $WeekTypeEntityCopyWith<$Res>(_value.weekType, (value) {
      return _then(_value.copyWith(weekType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleEntityImplCopyWith<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  factory _$$ScheduleEntityImplCopyWith(_$ScheduleEntityImpl value,
          $Res Function(_$ScheduleEntityImpl) then) =
      __$$ScheduleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> weekDays,
      WeekTypeEntity weekType,
      List<DayScheduleEntity> schedule});

  @override
  $WeekTypeEntityCopyWith<$Res> get weekType;
}

/// @nodoc
class __$$ScheduleEntityImplCopyWithImpl<$Res>
    extends _$ScheduleEntityCopyWithImpl<$Res, _$ScheduleEntityImpl>
    implements _$$ScheduleEntityImplCopyWith<$Res> {
  __$$ScheduleEntityImplCopyWithImpl(
      _$ScheduleEntityImpl _value, $Res Function(_$ScheduleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDays = null,
    Object? weekType = null,
    Object? schedule = null,
  }) {
    return _then(_$ScheduleEntityImpl(
      weekDays: null == weekDays
          ? _value._weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weekType: null == weekType
          ? _value.weekType
          : weekType // ignore: cast_nullable_to_non_nullable
              as WeekTypeEntity,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<DayScheduleEntity>,
    ));
  }
}

/// @nodoc

class _$ScheduleEntityImpl implements _ScheduleEntity {
  const _$ScheduleEntityImpl(
      {required final List<String> weekDays,
      required this.weekType,
      required final List<DayScheduleEntity> schedule})
      : _weekDays = weekDays,
        _schedule = schedule;

  final List<String> _weekDays;
  @override
  List<String> get weekDays {
    if (_weekDays is EqualUnmodifiableListView) return _weekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekDays);
  }

  @override
  final WeekTypeEntity weekType;
  final List<DayScheduleEntity> _schedule;
  @override
  List<DayScheduleEntity> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleEntity(weekDays: $weekDays, weekType: $weekType, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEntityImpl &&
            const DeepCollectionEquality().equals(other._weekDays, _weekDays) &&
            (identical(other.weekType, weekType) ||
                other.weekType == weekType) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weekDays),
      weekType,
      const DeepCollectionEquality().hash(_schedule));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      __$$ScheduleEntityImplCopyWithImpl<_$ScheduleEntityImpl>(
          this, _$identity);
}

abstract class _ScheduleEntity implements ScheduleEntity {
  const factory _ScheduleEntity(
      {required final List<String> weekDays,
      required final WeekTypeEntity weekType,
      required final List<DayScheduleEntity> schedule}) = _$ScheduleEntityImpl;

  @override
  List<String> get weekDays;
  @override
  WeekTypeEntity get weekType;
  @override
  List<DayScheduleEntity> get schedule;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
