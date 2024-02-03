// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ScheduleEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScheduleEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$LoadImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'ScheduleEvent.load(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) {
    return load(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) {
    return load?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ScheduleEvent {
  const factory _Load(final int groupId) = _$LoadImpl;

  int get groupId;
  @JsonKey(ignore: true)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadLocalImplCopyWith<$Res> {
  factory _$$LoadLocalImplCopyWith(
          _$LoadLocalImpl value, $Res Function(_$LoadLocalImpl) then) =
      __$$LoadLocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class __$$LoadLocalImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadLocalImpl>
    implements _$$LoadLocalImplCopyWith<$Res> {
  __$$LoadLocalImplCopyWithImpl(
      _$LoadLocalImpl _value, $Res Function(_$LoadLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$LoadLocalImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadLocalImpl implements _LoadLocal {
  const _$LoadLocalImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'ScheduleEvent.loadLocal(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadLocalImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadLocalImplCopyWith<_$LoadLocalImpl> get copyWith =>
      __$$LoadLocalImplCopyWithImpl<_$LoadLocalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) {
    return loadLocal(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) {
    return loadLocal?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (loadLocal != null) {
      return loadLocal(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) {
    return loadLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) {
    return loadLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (loadLocal != null) {
      return loadLocal(this);
    }
    return orElse();
  }
}

abstract class _LoadLocal implements ScheduleEvent {
  const factory _LoadLocal(final int groupId) = _$LoadLocalImpl;

  int get groupId;
  @JsonKey(ignore: true)
  _$$LoadLocalImplCopyWith<_$LoadLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWeekTypeImplCopyWith<$Res> {
  factory _$$AddWeekTypeImplCopyWith(
          _$AddWeekTypeImpl value, $Res Function(_$AddWeekTypeImpl) then) =
      __$$AddWeekTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class __$$AddWeekTypeImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$AddWeekTypeImpl>
    implements _$$AddWeekTypeImplCopyWith<$Res> {
  __$$AddWeekTypeImplCopyWithImpl(
      _$AddWeekTypeImpl _value, $Res Function(_$AddWeekTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$AddWeekTypeImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddWeekTypeImpl implements _AddWeekType {
  const _$AddWeekTypeImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'ScheduleEvent.addWeekType(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWeekTypeImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWeekTypeImplCopyWith<_$AddWeekTypeImpl> get copyWith =>
      __$$AddWeekTypeImplCopyWithImpl<_$AddWeekTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) {
    return addWeekType(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) {
    return addWeekType?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (addWeekType != null) {
      return addWeekType(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) {
    return addWeekType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) {
    return addWeekType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (addWeekType != null) {
      return addWeekType(this);
    }
    return orElse();
  }
}

abstract class _AddWeekType implements ScheduleEvent {
  const factory _AddWeekType(final int groupId) = _$AddWeekTypeImpl;

  int get groupId;
  @JsonKey(ignore: true)
  _$$AddWeekTypeImplCopyWith<_$AddWeekTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubtractWeekTypeImplCopyWith<$Res> {
  factory _$$SubtractWeekTypeImplCopyWith(_$SubtractWeekTypeImpl value,
          $Res Function(_$SubtractWeekTypeImpl) then) =
      __$$SubtractWeekTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class __$$SubtractWeekTypeImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$SubtractWeekTypeImpl>
    implements _$$SubtractWeekTypeImplCopyWith<$Res> {
  __$$SubtractWeekTypeImplCopyWithImpl(_$SubtractWeekTypeImpl _value,
      $Res Function(_$SubtractWeekTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$SubtractWeekTypeImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubtractWeekTypeImpl implements _SubtractWeekType {
  const _$SubtractWeekTypeImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'ScheduleEvent.subtractWeekType(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtractWeekTypeImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtractWeekTypeImplCopyWith<_$SubtractWeekTypeImpl> get copyWith =>
      __$$SubtractWeekTypeImplCopyWithImpl<_$SubtractWeekTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int groupId) load,
    required TResult Function(int groupId) loadLocal,
    required TResult Function(int groupId) addWeekType,
    required TResult Function(int groupId) subtractWeekType,
  }) {
    return subtractWeekType(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int groupId)? load,
    TResult? Function(int groupId)? loadLocal,
    TResult? Function(int groupId)? addWeekType,
    TResult? Function(int groupId)? subtractWeekType,
  }) {
    return subtractWeekType?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int groupId)? load,
    TResult Function(int groupId)? loadLocal,
    TResult Function(int groupId)? addWeekType,
    TResult Function(int groupId)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (subtractWeekType != null) {
      return subtractWeekType(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
    required TResult Function(_AddWeekType value) addWeekType,
    required TResult Function(_SubtractWeekType value) subtractWeekType,
  }) {
    return subtractWeekType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
    TResult? Function(_AddWeekType value)? addWeekType,
    TResult? Function(_SubtractWeekType value)? subtractWeekType,
  }) {
    return subtractWeekType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    TResult Function(_AddWeekType value)? addWeekType,
    TResult Function(_SubtractWeekType value)? subtractWeekType,
    required TResult orElse(),
  }) {
    if (subtractWeekType != null) {
      return subtractWeekType(this);
    }
    return orElse();
  }
}

abstract class _SubtractWeekType implements ScheduleEvent {
  const factory _SubtractWeekType(final int groupId) = _$SubtractWeekTypeImpl;

  int get groupId;
  @JsonKey(ignore: true)
  _$$SubtractWeekTypeImplCopyWith<_$SubtractWeekTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScheduleEntity schedule) success,
    required TResult Function(String message) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScheduleEntity schedule)? success,
    TResult? Function(String message)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScheduleEntity schedule)? success,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScheduleEntity schedule) success,
    required TResult Function(String message) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScheduleEntity schedule)? success,
    TResult? Function(String message)? fail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScheduleEntity schedule)? success,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScheduleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScheduleEntity schedule) success,
    required TResult Function(String message) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScheduleEntity schedule)? success,
    TResult? Function(String message)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScheduleEntity schedule)? success,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleEntity schedule});

  $ScheduleEntityCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$SuccessImpl(
      null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleEntityCopyWith<$Res> get schedule {
    return $ScheduleEntityCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.schedule);

  @override
  final ScheduleEntity schedule;

  @override
  String toString() {
    return 'ScheduleState.success(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScheduleEntity schedule) success,
    required TResult Function(String message) fail,
  }) {
    return success(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScheduleEntity schedule)? success,
    TResult? Function(String message)? fail,
  }) {
    return success?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScheduleEntity schedule)? success,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ScheduleState {
  const factory _Success(final ScheduleEntity schedule) = _$SuccessImpl;

  ScheduleEntity get schedule;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<$Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl value, $Res Function(_$FailImpl) then) =
      __$$FailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$FailImpl>
    implements _$$FailImplCopyWith<$Res> {
  __$$FailImplCopyWithImpl(_$FailImpl _value, $Res Function(_$FailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailImpl implements _Fail {
  const _$FailImpl([this.message = "Unknown error"]);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ScheduleState.fail(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      __$$FailImplCopyWithImpl<_$FailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScheduleEntity schedule) success,
    required TResult Function(String message) fail,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScheduleEntity schedule)? success,
    TResult? Function(String message)? fail,
  }) {
    return fail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScheduleEntity schedule)? success,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements ScheduleState {
  const factory _Fail([final String message]) = _$FailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
