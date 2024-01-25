// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_group_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSelectorEventCopyWith<$Res> {
  factory $GroupSelectorEventCopyWith(
          GroupSelectorEvent value, $Res Function(GroupSelectorEvent) then) =
      _$GroupSelectorEventCopyWithImpl<$Res, GroupSelectorEvent>;
}

/// @nodoc
class _$GroupSelectorEventCopyWithImpl<$Res, $Val extends GroupSelectorEvent>
    implements $GroupSelectorEventCopyWith<$Res> {
  _$GroupSelectorEventCopyWithImpl(this._value, this._then);

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
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'GroupSelectorEvent.started()';
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
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
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
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GroupSelectorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'GroupSelectorEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements GroupSelectorEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$LoadFailImplCopyWith<$Res> {
  factory _$$LoadFailImplCopyWith(
          _$LoadFailImpl value, $Res Function(_$LoadFailImpl) then) =
      __$$LoadFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$LoadFailImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$LoadFailImpl>
    implements _$$LoadFailImplCopyWith<$Res> {
  __$$LoadFailImplCopyWithImpl(
      _$LoadFailImpl _value, $Res Function(_$LoadFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$LoadFailImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFailImpl implements _LoadFail {
  const _$LoadFailImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GroupSelectorEvent.fail(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailImplCopyWith<_$LoadFailImpl> get copyWith =>
      __$$LoadFailImplCopyWithImpl<_$LoadFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return fail(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return fail?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _LoadFail implements GroupSelectorEvent {
  const factory _LoadFail(final String errorMessage) = _$LoadFailImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LoadFailImplCopyWith<_$LoadFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl();

  @override
  String toString() {
    return 'GroupSelectorEvent.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements GroupSelectorEvent {
  const factory _LoadSuccess() = _$LoadSuccessImpl;
}

/// @nodoc
abstract class _$$setGroupImplCopyWith<$Res> {
  factory _$$setGroupImplCopyWith(
          _$setGroupImpl value, $Res Function(_$setGroupImpl) then) =
      __$$setGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupEntity group});

  $GroupEntityCopyWith<$Res> get group;
}

/// @nodoc
class __$$setGroupImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$setGroupImpl>
    implements _$$setGroupImplCopyWith<$Res> {
  __$$setGroupImplCopyWithImpl(
      _$setGroupImpl _value, $Res Function(_$setGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$setGroupImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupEntityCopyWith<$Res> get group {
    return $GroupEntityCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$setGroupImpl implements _setGroup {
  const _$setGroupImpl(this.group);

  @override
  final GroupEntity group;

  @override
  String toString() {
    return 'GroupSelectorEvent.setGroup(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setGroupImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$setGroupImplCopyWith<_$setGroupImpl> get copyWith =>
      __$$setGroupImplCopyWithImpl<_$setGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return setGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return setGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (setGroup != null) {
      return setGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return setGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return setGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (setGroup != null) {
      return setGroup(this);
    }
    return orElse();
  }
}

abstract class _setGroup implements GroupSelectorEvent {
  const factory _setGroup(final GroupEntity group) = _$setGroupImpl;

  GroupEntity get group;
  @JsonKey(ignore: true)
  _$$setGroupImplCopyWith<_$setGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setCourseImplCopyWith<$Res> {
  factory _$$setCourseImplCopyWith(
          _$setCourseImpl value, $Res Function(_$setCourseImpl) then) =
      __$$setCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseEntity course});

  $CourseEntityCopyWith<$Res> get course;
}

/// @nodoc
class __$$setCourseImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$setCourseImpl>
    implements _$$setCourseImplCopyWith<$Res> {
  __$$setCourseImplCopyWithImpl(
      _$setCourseImpl _value, $Res Function(_$setCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$setCourseImpl(
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseEntityCopyWith<$Res> get course {
    return $CourseEntityCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$setCourseImpl implements _setCourse {
  const _$setCourseImpl(this.course);

  @override
  final CourseEntity course;

  @override
  String toString() {
    return 'GroupSelectorEvent.setCourse(course: $course)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setCourseImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$setCourseImplCopyWith<_$setCourseImpl> get copyWith =>
      __$$setCourseImplCopyWithImpl<_$setCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return setCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return setCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (setCourse != null) {
      return setCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return setCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return setCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (setCourse != null) {
      return setCourse(this);
    }
    return orElse();
  }
}

abstract class _setCourse implements GroupSelectorEvent {
  const factory _setCourse(final CourseEntity course) = _$setCourseImpl;

  CourseEntity get course;
  @JsonKey(ignore: true)
  _$$setCourseImplCopyWith<_$setCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setDepartmentImplCopyWith<$Res> {
  factory _$$setDepartmentImplCopyWith(
          _$setDepartmentImpl value, $Res Function(_$setDepartmentImpl) then) =
      __$$setDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentEntity department});

  $DepartmentEntityCopyWith<$Res> get department;
}

/// @nodoc
class __$$setDepartmentImplCopyWithImpl<$Res>
    extends _$GroupSelectorEventCopyWithImpl<$Res, _$setDepartmentImpl>
    implements _$$setDepartmentImplCopyWith<$Res> {
  __$$setDepartmentImplCopyWithImpl(
      _$setDepartmentImpl _value, $Res Function(_$setDepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$setDepartmentImpl(
      null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentEntityCopyWith<$Res> get department {
    return $DepartmentEntityCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$setDepartmentImpl implements _setDepartment {
  const _$setDepartmentImpl(this.department);

  @override
  final DepartmentEntity department;

  @override
  String toString() {
    return 'GroupSelectorEvent.setDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$setDepartmentImplCopyWith<_$setDepartmentImpl> get copyWith =>
      __$$setDepartmentImplCopyWithImpl<_$setDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(String errorMessage) fail,
    required TResult Function() success,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return setDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? fail,
    TResult? Function()? success,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return setDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(String errorMessage)? fail,
    TResult Function()? success,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (setDepartment != null) {
      return setDepartment(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_LoadFail value) fail,
    required TResult Function(_LoadSuccess value) success,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return setDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadFail value)? fail,
    TResult? Function(_LoadSuccess value)? success,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return setDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_LoadFail value)? fail,
    TResult Function(_LoadSuccess value)? success,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (setDepartment != null) {
      return setDepartment(this);
    }
    return orElse();
  }
}

abstract class _setDepartment implements GroupSelectorEvent {
  const factory _setDepartment(final DepartmentEntity department) =
      _$setDepartmentImpl;

  DepartmentEntity get department;
  @JsonKey(ignore: true)
  _$$setDepartmentImplCopyWith<_$setDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupSelectorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? fail,
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
abstract class $GroupSelectorStateCopyWith<$Res> {
  factory $GroupSelectorStateCopyWith(
          GroupSelectorState value, $Res Function(GroupSelectorState) then) =
      _$GroupSelectorStateCopyWithImpl<$Res, GroupSelectorState>;
}

/// @nodoc
class _$GroupSelectorStateCopyWithImpl<$Res, $Val extends GroupSelectorState>
    implements $GroupSelectorStateCopyWith<$Res> {
  _$GroupSelectorStateCopyWithImpl(this._value, this._then);

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
    extends _$GroupSelectorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GroupSelectorState.initial()';
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
    required TResult Function() success,
    required TResult Function(String errorMessage) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? fail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? fail,
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

abstract class _Initial implements GroupSelectorState {
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
    extends _$GroupSelectorStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'GroupSelectorState.loading()';
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
    required TResult Function() success,
    required TResult Function(String errorMessage) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? fail,
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

abstract class _Loading implements GroupSelectorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GroupSelectorStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'GroupSelectorState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) fail,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? fail,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
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

abstract class _Success implements GroupSelectorState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailImplCopyWith<$Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl value, $Res Function(_$FailImpl) then) =
      __$$FailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailImplCopyWithImpl<$Res>
    extends _$GroupSelectorStateCopyWithImpl<$Res, _$FailImpl>
    implements _$$FailImplCopyWith<$Res> {
  __$$FailImplCopyWithImpl(_$FailImpl _value, $Res Function(_$FailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailImpl implements _Fail {
  const _$FailImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GroupSelectorState.fail(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

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
    required TResult Function() success,
    required TResult Function(String errorMessage) fail,
  }) {
    return fail(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? fail,
  }) {
    return fail?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(errorMessage);
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

abstract class _Fail implements GroupSelectorState {
  const factory _Fail(final String errorMessage) = _$FailImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
