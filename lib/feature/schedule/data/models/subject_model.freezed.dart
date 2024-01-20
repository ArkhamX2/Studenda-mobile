// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) {
  return _SubjectModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectModel {
  @JsonKey(name: 'Id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Discipline')
  DisciplineModel get discipline => throw _privateConstructorUsedError;
  @JsonKey(name: 'User')
  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'Classroom')
  String get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'SubjectPositionId')
  int get subjectPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'WeekPositionId')
  int get weekPositionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) then) =
      _$SubjectModelCopyWithImpl<$Res, SubjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'Discipline') DisciplineModel discipline,
      @JsonKey(name: 'User') UserModel user,
      @JsonKey(name: 'Classroom') String classroom,
      @JsonKey(name: 'SubjectPositionId') int subjectPositionId,
      @JsonKey(name: 'WeekPositionId') int weekPositionId});

  $DisciplineModelCopyWith<$Res> get discipline;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res, $Val extends SubjectModel>
    implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discipline = null,
    Object? user = null,
    Object? classroom = null,
    Object? subjectPositionId = null,
    Object? weekPositionId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discipline: null == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as DisciplineModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPositionId: null == subjectPositionId
          ? _value.subjectPositionId
          : subjectPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      weekPositionId: null == weekPositionId
          ? _value.weekPositionId
          : weekPositionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DisciplineModelCopyWith<$Res> get discipline {
    return $DisciplineModelCopyWith<$Res>(_value.discipline, (value) {
      return _then(_value.copyWith(discipline: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectModelImplCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$$SubjectModelImplCopyWith(
          _$SubjectModelImpl value, $Res Function(_$SubjectModelImpl) then) =
      __$$SubjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'Discipline') DisciplineModel discipline,
      @JsonKey(name: 'User') UserModel user,
      @JsonKey(name: 'Classroom') String classroom,
      @JsonKey(name: 'SubjectPositionId') int subjectPositionId,
      @JsonKey(name: 'WeekPositionId') int weekPositionId});

  @override
  $DisciplineModelCopyWith<$Res> get discipline;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SubjectModelImplCopyWithImpl<$Res>
    extends _$SubjectModelCopyWithImpl<$Res, _$SubjectModelImpl>
    implements _$$SubjectModelImplCopyWith<$Res> {
  __$$SubjectModelImplCopyWithImpl(
      _$SubjectModelImpl _value, $Res Function(_$SubjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discipline = null,
    Object? user = null,
    Object? classroom = null,
    Object? subjectPositionId = null,
    Object? weekPositionId = null,
  }) {
    return _then(_$SubjectModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discipline: null == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as DisciplineModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      subjectPositionId: null == subjectPositionId
          ? _value.subjectPositionId
          : subjectPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      weekPositionId: null == weekPositionId
          ? _value.weekPositionId
          : weekPositionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectModelImpl implements _SubjectModel {
  const _$SubjectModelImpl(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'Discipline') required this.discipline,
      @JsonKey(name: 'User') required this.user,
      @JsonKey(name: 'Classroom') required this.classroom,
      @JsonKey(name: 'SubjectPositionId') required this.subjectPositionId,
      @JsonKey(name: 'WeekPositionId') required this.weekPositionId});

  factory _$SubjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  @JsonKey(name: 'Discipline')
  final DisciplineModel discipline;
  @override
  @JsonKey(name: 'User')
  final UserModel user;
  @override
  @JsonKey(name: 'Classroom')
  final String classroom;
  @override
  @JsonKey(name: 'SubjectPositionId')
  final int subjectPositionId;
  @override
  @JsonKey(name: 'WeekPositionId')
  final int weekPositionId;

  @override
  String toString() {
    return 'SubjectModel(id: $id, discipline: $discipline, user: $user, classroom: $classroom, subjectPositionId: $subjectPositionId, weekPositionId: $weekPositionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discipline, discipline) ||
                other.discipline == discipline) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.subjectPositionId, subjectPositionId) ||
                other.subjectPositionId == subjectPositionId) &&
            (identical(other.weekPositionId, weekPositionId) ||
                other.weekPositionId == weekPositionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, discipline, user, classroom,
      subjectPositionId, weekPositionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      __$$SubjectModelImplCopyWithImpl<_$SubjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectModel implements SubjectModel {
  const factory _SubjectModel(
      {@JsonKey(name: 'Id') required final int id,
      @JsonKey(name: 'Discipline') required final DisciplineModel discipline,
      @JsonKey(name: 'User') required final UserModel user,
      @JsonKey(name: 'Classroom') required final String classroom,
      @JsonKey(name: 'SubjectPositionId') required final int subjectPositionId,
      @JsonKey(name: 'WeekPositionId')
      required final int weekPositionId}) = _$SubjectModelImpl;

  factory _SubjectModel.fromJson(Map<String, dynamic> json) =
      _$SubjectModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  @JsonKey(name: 'Discipline')
  DisciplineModel get discipline;
  @override
  @JsonKey(name: 'User')
  UserModel get user;
  @override
  @JsonKey(name: 'Classroom')
  String get classroom;
  @override
  @JsonKey(name: 'SubjectPositionId')
  int get subjectPositionId;
  @override
  @JsonKey(name: 'WeekPositionId')
  int get weekPositionId;
  @override
  @JsonKey(ignore: true)
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
