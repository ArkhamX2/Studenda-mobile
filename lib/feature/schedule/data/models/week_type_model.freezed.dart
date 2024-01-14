// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekTypeModel _$WeekTypeModelFromJson(Map<String, dynamic> json) {
  return _WeekTypeModel.fromJson(json);
}

/// @nodoc
mixin _$WeekTypeModel {
  @JsonKey(name: 'Id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekTypeModelCopyWith<WeekTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekTypeModelCopyWith<$Res> {
  factory $WeekTypeModelCopyWith(
          WeekTypeModel value, $Res Function(WeekTypeModel) then) =
      _$WeekTypeModelCopyWithImpl<$Res, WeekTypeModel>;
  @useResult
  $Res call({@JsonKey(name: 'Id') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class _$WeekTypeModelCopyWithImpl<$Res, $Val extends WeekTypeModel>
    implements $WeekTypeModelCopyWith<$Res> {
  _$WeekTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekTypeModelImplCopyWith<$Res>
    implements $WeekTypeModelCopyWith<$Res> {
  factory _$$WeekTypeModelImplCopyWith(
          _$WeekTypeModelImpl value, $Res Function(_$WeekTypeModelImpl) then) =
      __$$WeekTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Id') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class __$$WeekTypeModelImplCopyWithImpl<$Res>
    extends _$WeekTypeModelCopyWithImpl<$Res, _$WeekTypeModelImpl>
    implements _$$WeekTypeModelImplCopyWith<$Res> {
  __$$WeekTypeModelImplCopyWithImpl(
      _$WeekTypeModelImpl _value, $Res Function(_$WeekTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WeekTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekTypeModelImpl implements _WeekTypeModel {
  const _$WeekTypeModelImpl(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'Name') required this.name});

  factory _$WeekTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String name;

  @override
  String toString() {
    return 'WeekTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekTypeModelImplCopyWith<_$WeekTypeModelImpl> get copyWith =>
      __$$WeekTypeModelImplCopyWithImpl<_$WeekTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekTypeModelImplToJson(
      this,
    );
  }
}

abstract class _WeekTypeModel implements WeekTypeModel {
  const factory _WeekTypeModel(
      {@JsonKey(name: 'Id') required final int id,
      @JsonKey(name: 'Name') required final String name}) = _$WeekTypeModelImpl;

  factory _WeekTypeModel.fromJson(Map<String, dynamic> json) =
      _$WeekTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WeekTypeModelImplCopyWith<_$WeekTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
