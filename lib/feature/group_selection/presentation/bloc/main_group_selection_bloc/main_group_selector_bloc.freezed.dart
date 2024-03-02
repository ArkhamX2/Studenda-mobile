// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_group_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainGroupSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainGroupSelectorEventCopyWith<$Res> {
  factory $MainGroupSelectorEventCopyWith(MainGroupSelectorEvent value,
          $Res Function(MainGroupSelectorEvent) then) =
      _$MainGroupSelectorEventCopyWithImpl<$Res, MainGroupSelectorEvent>;
}

/// @nodoc
class _$MainGroupSelectorEventCopyWithImpl<$Res,
        $Val extends MainGroupSelectorEvent>
    implements $MainGroupSelectorEventCopyWith<$Res> {
  _$MainGroupSelectorEventCopyWithImpl(this._value, this._then);

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
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MainGroupSelectorEvent.started()';
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
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
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
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
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
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
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
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
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
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
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
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
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

abstract class _Started implements MainGroupSelectorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$getGroupImplCopyWith<$Res> {
  factory _$$getGroupImplCopyWith(
          _$getGroupImpl value, $Res Function(_$getGroupImpl) then) =
      __$$getGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getGroupImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$getGroupImpl>
    implements _$$getGroupImplCopyWith<$Res> {
  __$$getGroupImplCopyWithImpl(
      _$getGroupImpl _value, $Res Function(_$getGroupImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getGroupImpl implements _getGroup {
  const _$getGroupImpl();

  @override
  String toString() {
    return 'MainGroupSelectorEvent.getGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return getGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return getGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (getGroup != null) {
      return getGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return getGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return getGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (getGroup != null) {
      return getGroup(this);
    }
    return orElse();
  }
}

abstract class _getGroup implements MainGroupSelectorEvent {
  const factory _getGroup() = _$getGroupImpl;
}

/// @nodoc
abstract class _$$getCourseImplCopyWith<$Res> {
  factory _$$getCourseImplCopyWith(
          _$getCourseImpl value, $Res Function(_$getCourseImpl) then) =
      __$$getCourseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getCourseImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$getCourseImpl>
    implements _$$getCourseImplCopyWith<$Res> {
  __$$getCourseImplCopyWithImpl(
      _$getCourseImpl _value, $Res Function(_$getCourseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getCourseImpl implements _getCourse {
  const _$getCourseImpl();

  @override
  String toString() {
    return 'MainGroupSelectorEvent.getCourse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getCourseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return getCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return getCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return getCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return getCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse(this);
    }
    return orElse();
  }
}

abstract class _getCourse implements MainGroupSelectorEvent {
  const factory _getCourse() = _$getCourseImpl;
}

/// @nodoc
abstract class _$$getDepartmentImplCopyWith<$Res> {
  factory _$$getDepartmentImplCopyWith(
          _$getDepartmentImpl value, $Res Function(_$getDepartmentImpl) then) =
      __$$getDepartmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getDepartmentImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$getDepartmentImpl>
    implements _$$getDepartmentImplCopyWith<$Res> {
  __$$getDepartmentImplCopyWithImpl(
      _$getDepartmentImpl _value, $Res Function(_$getDepartmentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getDepartmentImpl implements _getDepartment {
  const _$getDepartmentImpl();

  @override
  String toString() {
    return 'MainGroupSelectorEvent.getDepartment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getDepartmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
    required TResult Function(GroupEntity group) setGroup,
    required TResult Function(CourseEntity course) setCourse,
    required TResult Function(DepartmentEntity department) setDepartment,
  }) {
    return getDepartment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
    TResult? Function(GroupEntity group)? setGroup,
    TResult? Function(CourseEntity course)? setCourse,
    TResult? Function(DepartmentEntity department)? setDepartment,
  }) {
    return getDepartment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
    TResult Function(GroupEntity group)? setGroup,
    TResult Function(CourseEntity course)? setCourse,
    TResult Function(DepartmentEntity department)? setDepartment,
    required TResult orElse(),
  }) {
    if (getDepartment != null) {
      return getDepartment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
    required TResult Function(_setGroup value) setGroup,
    required TResult Function(_setCourse value) setCourse,
    required TResult Function(_setDepartment value) setDepartment,
  }) {
    return getDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
    TResult? Function(_setGroup value)? setGroup,
    TResult? Function(_setCourse value)? setCourse,
    TResult? Function(_setDepartment value)? setDepartment,
  }) {
    return getDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
    TResult Function(_setGroup value)? setGroup,
    TResult Function(_setCourse value)? setCourse,
    TResult Function(_setDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (getDepartment != null) {
      return getDepartment(this);
    }
    return orElse();
  }
}

abstract class _getDepartment implements MainGroupSelectorEvent {
  const factory _getDepartment() = _$getDepartmentImpl;
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
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$setGroupImpl>
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
    return 'MainGroupSelectorEvent.setGroup(group: $group)';
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
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
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
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
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
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
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
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
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
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
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
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
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

abstract class _setGroup implements MainGroupSelectorEvent {
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
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$setCourseImpl>
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
    return 'MainGroupSelectorEvent.setCourse(course: $course)';
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
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
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
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
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
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
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
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
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
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
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
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
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

abstract class _setCourse implements MainGroupSelectorEvent {
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
    extends _$MainGroupSelectorEventCopyWithImpl<$Res, _$setDepartmentImpl>
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
    return 'MainGroupSelectorEvent.setDepartment(department: $department)';
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
    required TResult Function() getGroup,
    required TResult Function() getCourse,
    required TResult Function() getDepartment,
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
    TResult? Function()? getGroup,
    TResult? Function()? getCourse,
    TResult? Function()? getDepartment,
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
    TResult Function()? getGroup,
    TResult Function()? getCourse,
    TResult Function()? getDepartment,
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
    required TResult Function(_getGroup value) getGroup,
    required TResult Function(_getCourse value) getCourse,
    required TResult Function(_getDepartment value) getDepartment,
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
    TResult? Function(_getGroup value)? getGroup,
    TResult? Function(_getCourse value)? getCourse,
    TResult? Function(_getDepartment value)? getDepartment,
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
    TResult Function(_getGroup value)? getGroup,
    TResult Function(_getCourse value)? getCourse,
    TResult Function(_getDepartment value)? getDepartment,
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

abstract class _setDepartment implements MainGroupSelectorEvent {
  const factory _setDepartment(final DepartmentEntity department) =
      _$setDepartmentImpl;

  DepartmentEntity get department;
  @JsonKey(ignore: true)
  _$$setDepartmentImplCopyWith<_$setDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainGroupSelectorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainGroupSelectorStateCopyWith<$Res> {
  factory $MainGroupSelectorStateCopyWith(MainGroupSelectorState value,
          $Res Function(MainGroupSelectorState) then) =
      _$MainGroupSelectorStateCopyWithImpl<$Res, MainGroupSelectorState>;
}

/// @nodoc
class _$MainGroupSelectorStateCopyWithImpl<$Res,
        $Val extends MainGroupSelectorState>
    implements $MainGroupSelectorStateCopyWith<$Res> {
  _$MainGroupSelectorStateCopyWithImpl(this._value, this._then);

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
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainGroupSelectorState.initial()';
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
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
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
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainGroupSelectorState {
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
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'MainGroupSelectorState.loading()';
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
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
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
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MainGroupSelectorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GroupSuccessImplCopyWith<$Res> {
  factory _$$GroupSuccessImplCopyWith(
          _$GroupSuccessImpl value, $Res Function(_$GroupSuccessImpl) then) =
      __$$GroupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupEntity group});

  $GroupEntityCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupSuccessImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$GroupSuccessImpl>
    implements _$$GroupSuccessImplCopyWith<$Res> {
  __$$GroupSuccessImplCopyWithImpl(
      _$GroupSuccessImpl _value, $Res Function(_$GroupSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$GroupSuccessImpl(
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

class _$GroupSuccessImpl implements _GroupSuccess {
  const _$GroupSuccessImpl(this.group);

  @override
  final GroupEntity group;

  @override
  String toString() {
    return 'MainGroupSelectorState.groupSuccess(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSuccessImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSuccessImplCopyWith<_$GroupSuccessImpl> get copyWith =>
      __$$GroupSuccessImplCopyWithImpl<_$GroupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return groupSuccess(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return groupSuccess?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) {
    if (groupSuccess != null) {
      return groupSuccess(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return groupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return groupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (groupSuccess != null) {
      return groupSuccess(this);
    }
    return orElse();
  }
}

abstract class _GroupSuccess implements MainGroupSelectorState {
  const factory _GroupSuccess(final GroupEntity group) = _$GroupSuccessImpl;

  GroupEntity get group;
  @JsonKey(ignore: true)
  _$$GroupSuccessImplCopyWith<_$GroupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseSuccessImplCopyWith<$Res> {
  factory _$$CourseSuccessImplCopyWith(
          _$CourseSuccessImpl value, $Res Function(_$CourseSuccessImpl) then) =
      __$$CourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseEntity course});

  $CourseEntityCopyWith<$Res> get course;
}

/// @nodoc
class __$$CourseSuccessImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$CourseSuccessImpl>
    implements _$$CourseSuccessImplCopyWith<$Res> {
  __$$CourseSuccessImplCopyWithImpl(
      _$CourseSuccessImpl _value, $Res Function(_$CourseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$CourseSuccessImpl(
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

class _$CourseSuccessImpl implements _CourseSuccess {
  const _$CourseSuccessImpl(this.course);

  @override
  final CourseEntity course;

  @override
  String toString() {
    return 'MainGroupSelectorState.courseSuccess(course: $course)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSuccessImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSuccessImplCopyWith<_$CourseSuccessImpl> get copyWith =>
      __$$CourseSuccessImplCopyWithImpl<_$CourseSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return courseSuccess(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return courseSuccess?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) {
    if (courseSuccess != null) {
      return courseSuccess(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return courseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return courseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (courseSuccess != null) {
      return courseSuccess(this);
    }
    return orElse();
  }
}

abstract class _CourseSuccess implements MainGroupSelectorState {
  const factory _CourseSuccess(final CourseEntity course) = _$CourseSuccessImpl;

  CourseEntity get course;
  @JsonKey(ignore: true)
  _$$CourseSuccessImplCopyWith<_$CourseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentSuccessImplCopyWith<$Res> {
  factory _$$DepartmentSuccessImplCopyWith(_$DepartmentSuccessImpl value,
          $Res Function(_$DepartmentSuccessImpl) then) =
      __$$DepartmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentEntity department});

  $DepartmentEntityCopyWith<$Res> get department;
}

/// @nodoc
class __$$DepartmentSuccessImplCopyWithImpl<$Res>
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$DepartmentSuccessImpl>
    implements _$$DepartmentSuccessImplCopyWith<$Res> {
  __$$DepartmentSuccessImplCopyWithImpl(_$DepartmentSuccessImpl _value,
      $Res Function(_$DepartmentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$DepartmentSuccessImpl(
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

class _$DepartmentSuccessImpl implements _DepartmentSuccess {
  const _$DepartmentSuccessImpl(this.department);

  @override
  final DepartmentEntity department;

  @override
  String toString() {
    return 'MainGroupSelectorState.departmentSuccess(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentSuccessImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentSuccessImplCopyWith<_$DepartmentSuccessImpl> get copyWith =>
      __$$DepartmentSuccessImplCopyWithImpl<_$DepartmentSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return departmentSuccess(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return departmentSuccess?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
    TResult Function(String errorMessage)? fail,
    required TResult orElse(),
  }) {
    if (departmentSuccess != null) {
      return departmentSuccess(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return departmentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return departmentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (departmentSuccess != null) {
      return departmentSuccess(this);
    }
    return orElse();
  }
}

abstract class _DepartmentSuccess implements MainGroupSelectorState {
  const factory _DepartmentSuccess(final DepartmentEntity department) =
      _$DepartmentSuccessImpl;

  DepartmentEntity get department;
  @JsonKey(ignore: true)
  _$$DepartmentSuccessImplCopyWith<_$DepartmentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$MainGroupSelectorStateCopyWithImpl<$Res, _$FailImpl>
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
    return 'MainGroupSelectorState.fail(errorMessage: $errorMessage)';
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
    required TResult Function(GroupEntity group) groupSuccess,
    required TResult Function(CourseEntity course) courseSuccess,
    required TResult Function(DepartmentEntity department) departmentSuccess,
    required TResult Function(String errorMessage) fail,
  }) {
    return fail(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GroupEntity group)? groupSuccess,
    TResult? Function(CourseEntity course)? courseSuccess,
    TResult? Function(DepartmentEntity department)? departmentSuccess,
    TResult? Function(String errorMessage)? fail,
  }) {
    return fail?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GroupEntity group)? groupSuccess,
    TResult Function(CourseEntity course)? courseSuccess,
    TResult Function(DepartmentEntity department)? departmentSuccess,
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
    required TResult Function(_GroupSuccess value) groupSuccess,
    required TResult Function(_CourseSuccess value) courseSuccess,
    required TResult Function(_DepartmentSuccess value) departmentSuccess,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GroupSuccess value)? groupSuccess,
    TResult? Function(_CourseSuccess value)? courseSuccess,
    TResult? Function(_DepartmentSuccess value)? departmentSuccess,
    TResult? Function(_Fail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GroupSuccess value)? groupSuccess,
    TResult Function(_CourseSuccess value)? courseSuccess,
    TResult Function(_DepartmentSuccess value)? departmentSuccess,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements MainGroupSelectorState {
  const factory _Fail(final String errorMessage) = _$FailImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
