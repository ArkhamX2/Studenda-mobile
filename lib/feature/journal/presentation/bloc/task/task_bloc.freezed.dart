// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        load,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        loadLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

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
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TaskEvent.started()';
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
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        load,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        loadLocal,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<int> asigneeUserIds,
      int disciplineId,
      int subjectTypeId,
      int academicYear});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asigneeUserIds = null,
    Object? disciplineId = null,
    Object? subjectTypeId = null,
    Object? academicYear = null,
  }) {
    return _then(_$LoadImpl(
      null == asigneeUserIds
          ? _value._asigneeUserIds
          : asigneeUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int,
      null == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      null == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl(final List<int> asigneeUserIds, this.disciplineId,
      this.subjectTypeId, this.academicYear)
      : _asigneeUserIds = asigneeUserIds;

  final List<int> _asigneeUserIds;
  @override
  List<int> get asigneeUserIds {
    if (_asigneeUserIds is EqualUnmodifiableListView) return _asigneeUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asigneeUserIds);
  }

  @override
  final int disciplineId;
  @override
  final int subjectTypeId;
  @override
  final int academicYear;

  @override
  String toString() {
    return 'TaskEvent.load(asigneeUserIds: $asigneeUserIds, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, academicYear: $academicYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            const DeepCollectionEquality()
                .equals(other._asigneeUserIds, _asigneeUserIds) &&
            (identical(other.disciplineId, disciplineId) ||
                other.disciplineId == disciplineId) &&
            (identical(other.subjectTypeId, subjectTypeId) ||
                other.subjectTypeId == subjectTypeId) &&
            (identical(other.academicYear, academicYear) ||
                other.academicYear == academicYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_asigneeUserIds),
      disciplineId,
      subjectTypeId,
      academicYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        load,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        loadLocal,
  }) {
    return load(asigneeUserIds, disciplineId, subjectTypeId, academicYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
  }) {
    return load?.call(
        asigneeUserIds, disciplineId, subjectTypeId, academicYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(asigneeUserIds, disciplineId, subjectTypeId, academicYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements TaskEvent {
  const factory _Load(final List<int> asigneeUserIds, final int disciplineId,
      final int subjectTypeId, final int academicYear) = _$LoadImpl;

  List<int> get asigneeUserIds;
  int get disciplineId;
  int get subjectTypeId;
  int get academicYear;
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
  $Res call(
      {List<int> asigneeUserIds,
      int disciplineId,
      int subjectTypeId,
      int academicYear});
}

/// @nodoc
class __$$LoadLocalImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadLocalImpl>
    implements _$$LoadLocalImplCopyWith<$Res> {
  __$$LoadLocalImplCopyWithImpl(
      _$LoadLocalImpl _value, $Res Function(_$LoadLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asigneeUserIds = null,
    Object? disciplineId = null,
    Object? subjectTypeId = null,
    Object? academicYear = null,
  }) {
    return _then(_$LoadLocalImpl(
      null == asigneeUserIds
          ? _value._asigneeUserIds
          : asigneeUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == disciplineId
          ? _value.disciplineId
          : disciplineId // ignore: cast_nullable_to_non_nullable
              as int,
      null == subjectTypeId
          ? _value.subjectTypeId
          : subjectTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      null == academicYear
          ? _value.academicYear
          : academicYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadLocalImpl implements _LoadLocal {
  const _$LoadLocalImpl(final List<int> asigneeUserIds, this.disciplineId,
      this.subjectTypeId, this.academicYear)
      : _asigneeUserIds = asigneeUserIds;

  final List<int> _asigneeUserIds;
  @override
  List<int> get asigneeUserIds {
    if (_asigneeUserIds is EqualUnmodifiableListView) return _asigneeUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asigneeUserIds);
  }

  @override
  final int disciplineId;
  @override
  final int subjectTypeId;
  @override
  final int academicYear;

  @override
  String toString() {
    return 'TaskEvent.loadLocal(asigneeUserIds: $asigneeUserIds, disciplineId: $disciplineId, subjectTypeId: $subjectTypeId, academicYear: $academicYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadLocalImpl &&
            const DeepCollectionEquality()
                .equals(other._asigneeUserIds, _asigneeUserIds) &&
            (identical(other.disciplineId, disciplineId) ||
                other.disciplineId == disciplineId) &&
            (identical(other.subjectTypeId, subjectTypeId) ||
                other.subjectTypeId == subjectTypeId) &&
            (identical(other.academicYear, academicYear) ||
                other.academicYear == academicYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_asigneeUserIds),
      disciplineId,
      subjectTypeId,
      academicYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadLocalImplCopyWith<_$LoadLocalImpl> get copyWith =>
      __$$LoadLocalImplCopyWithImpl<_$LoadLocalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        load,
    required TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)
        loadLocal,
  }) {
    return loadLocal(asigneeUserIds, disciplineId, subjectTypeId, academicYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult? Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
  }) {
    return loadLocal?.call(
        asigneeUserIds, disciplineId, subjectTypeId, academicYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        load,
    TResult Function(List<int> asigneeUserIds, int disciplineId,
            int subjectTypeId, int academicYear)?
        loadLocal,
    required TResult orElse(),
  }) {
    if (loadLocal != null) {
      return loadLocal(
          asigneeUserIds, disciplineId, subjectTypeId, academicYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadLocal value) loadLocal,
  }) {
    return loadLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadLocal value)? loadLocal,
  }) {
    return loadLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadLocal value)? loadLocal,
    required TResult orElse(),
  }) {
    if (loadLocal != null) {
      return loadLocal(this);
    }
    return orElse();
  }
}

abstract class _LoadLocal implements TaskEvent {
  const factory _LoadLocal(
      final List<int> asigneeUserIds,
      final int disciplineId,
      final int subjectTypeId,
      final int academicYear) = _$LoadLocalImpl;

  List<int> get asigneeUserIds;
  int get disciplineId;
  int get subjectTypeId;
  int get academicYear;
  @JsonKey(ignore: true)
  _$$LoadLocalImplCopyWith<_$LoadLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
  $Res call({List<TaskEntity> schedule});
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
    Object? schedule = null,
  }) {
    return _then(_$SuccessImpl(
      null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<TaskEntity> schedule) : _schedule = schedule;

  final List<TaskEntity> _schedule;
  @override
  List<TaskEntity> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'TaskState.success(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedule));

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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return success(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return success?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
  const factory _Success(final List<TaskEntity> schedule) = _$SuccessImpl;

  List<TaskEntity> get schedule;
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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return fail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return localLoadingFail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return localLoadingFail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
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
  $Res call({List<TaskEntity> schedule});
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
    Object? schedule = null,
  }) {
    return _then(_$LocalLoadingSuccessImpl(
      null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$LocalLoadingSuccessImpl implements _LocalLoadingSuccess {
  const _$LocalLoadingSuccessImpl(final List<TaskEntity> schedule)
      : _schedule = schedule;

  final List<TaskEntity> _schedule;
  @override
  List<TaskEntity> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'TaskState.localLoadingSuccess(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalLoadingSuccessImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedule));

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
    required TResult Function(List<TaskEntity> schedule) success,
    required TResult Function(String message) fail,
    required TResult Function(String message) localLoadingFail,
    required TResult Function(List<TaskEntity> schedule) localLoadingSuccess,
  }) {
    return localLoadingSuccess(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> schedule)? success,
    TResult? Function(String message)? fail,
    TResult? Function(String message)? localLoadingFail,
    TResult? Function(List<TaskEntity> schedule)? localLoadingSuccess,
  }) {
    return localLoadingSuccess?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> schedule)? success,
    TResult Function(String message)? fail,
    TResult Function(String message)? localLoadingFail,
    TResult Function(List<TaskEntity> schedule)? localLoadingSuccess,
    required TResult orElse(),
  }) {
    if (localLoadingSuccess != null) {
      return localLoadingSuccess(schedule);
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
  const factory _LocalLoadingSuccess(final List<TaskEntity> schedule) =
      _$LocalLoadingSuccessImpl;

  List<TaskEntity> get schedule;
  @JsonKey(ignore: true)
  _$$LocalLoadingSuccessImplCopyWith<_$LocalLoadingSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
