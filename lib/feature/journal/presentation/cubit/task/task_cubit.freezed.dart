// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

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
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TaskState.initial()';
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
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
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
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
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
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
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
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TaskState.loading()';
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
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
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
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
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
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$SuccessImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<TaskEntity> tasks) : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.success(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

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
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return success(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return success?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tasks);
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
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
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
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
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TaskState {
  const factory _Success(final List<TaskEntity> tasks) = _$SuccessImpl;

  List<TaskEntity> get tasks;
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
    extends _$TaskStateCopyWithImpl<$Res, _$FailImpl>
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
    return 'TaskState.fail(message: $message)';
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
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return fail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
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
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
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
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements TaskState {
  const factory _Fail([final String message]) = _$FailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalLoadingFailImplCopyWith<$Res> {
  factory _$$LocalLoadingFailImplCopyWith(_$LocalLoadingFailImpl value,
          $Res Function(_$LocalLoadingFailImpl) then) =
      __$$LocalLoadingFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocalLoadingFailImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LocalLoadingFailImpl>
    implements _$$LocalLoadingFailImplCopyWith<$Res> {
  __$$LocalLoadingFailImplCopyWithImpl(_$LocalLoadingFailImpl _value,
      $Res Function(_$LocalLoadingFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocalLoadingFailImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalLoadingFailImpl implements _LocalLoadingFail {
  const _$LocalLoadingFailImpl([this.message = "Unknown error"]);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TaskState.localLoadingFail(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalLoadingFailImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalLoadingFailImplCopyWith<_$LocalLoadingFailImpl> get copyWith =>
      __$$LocalLoadingFailImplCopyWithImpl<_$LocalLoadingFailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return localLoadingFail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return localLoadingFail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (localLoadingFail != null) {
      return localLoadingFail(message);
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
  }) {
    return localLoadingFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
  }) {
    return localLoadingFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (localLoadingFail != null) {
      return localLoadingFail(this);
    }
    return orElse();
  }
}

abstract class _LocalLoadingFail implements TaskState {
  const factory _LocalLoadingFail([final String message]) =
      _$LocalLoadingFailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LocalLoadingFailImplCopyWith<_$LocalLoadingFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalLoadingSuccessImplCopyWith<$Res> {
  factory _$$LocalLoadingSuccessImplCopyWith(_$LocalLoadingSuccessImpl value,
          $Res Function(_$LocalLoadingSuccessImpl) then) =
      __$$LocalLoadingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$LocalLoadingSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LocalLoadingSuccessImpl>
    implements _$$LocalLoadingSuccessImplCopyWith<$Res> {
  __$$LocalLoadingSuccessImplCopyWithImpl(_$LocalLoadingSuccessImpl _value,
      $Res Function(_$LocalLoadingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LocalLoadingSuccessImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$LocalLoadingSuccessImpl implements _LocalLoadingSuccess {
  const _$LocalLoadingSuccessImpl(final List<TaskEntity> tasks)
      : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.localLoadingSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalLoadingSuccessImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalLoadingSuccessImplCopyWith<_$LocalLoadingSuccessImpl> get copyWith =>
      __$$LocalLoadingSuccessImplCopyWithImpl<_$LocalLoadingSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> tasks) localLoadingSuccess,
  }) {
    return localLoadingSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> tasks)? localLoadingSuccess,
  }) {
    return localLoadingSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> tasks)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (localLoadingSuccess != null) {
      return localLoadingSuccess(tasks);
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
    required TResult Function(_LocalLoadingFail value) localLoadingFail,
    required TResult Function(_LocalLoadingSuccess value) localLoadingSuccess,
  }) {
    return localLoadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_LocalLoadingFail value)? localLoadingFail,
    TResult? Function(_LocalLoadingSuccess value)? localLoadingSuccess,
  }) {
    return localLoadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    TResult Function(_LocalLoadingFail value)? localLoadingFail,
    TResult Function(_LocalLoadingSuccess value)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (localLoadingSuccess != null) {
      return localLoadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LocalLoadingSuccess implements TaskState {
  const factory _LocalLoadingSuccess(final List<TaskEntity> tasks) =
      _$LocalLoadingSuccessImpl;

  List<TaskEntity> get tasks;
  @JsonKey(ignore: true)
  _$$LocalLoadingSuccessImplCopyWith<_$LocalLoadingSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
