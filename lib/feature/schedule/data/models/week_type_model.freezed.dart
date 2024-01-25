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
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'index') int index});
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
    Object? index = null,
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
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'index') int index});
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
    Object? index = null,
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
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekTypeModelImpl implements _WeekTypeModel {
  const _$WeekTypeModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'index') required this.index});

  factory _$WeekTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'index')
  final int index;

  @override
  String toString() {
    return 'WeekTypeModel(id: $id, name: $name, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, index);

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
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'index') required final int index}) = _$WeekTypeModelImpl;

  factory _WeekTypeModel.fromJson(Map<String, dynamic> json) =
      _$WeekTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'index')
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$WeekTypeModelImplCopyWith<_$WeekTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
