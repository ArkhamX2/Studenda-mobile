// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discipline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisciplineModel _$DisciplineModelFromJson(Map<String, dynamic> json) {
  return _DisciplineModel.fromJson(json);
}

/// @nodoc
mixin _$DisciplineModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisciplineModelCopyWith<DisciplineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisciplineModelCopyWith<$Res> {
  factory $DisciplineModelCopyWith(
          DisciplineModel value, $Res Function(DisciplineModel) then) =
      _$DisciplineModelCopyWithImpl<$Res, DisciplineModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name});
}

/// @nodoc
class _$DisciplineModelCopyWithImpl<$Res, $Val extends DisciplineModel>
    implements $DisciplineModelCopyWith<$Res> {
  _$DisciplineModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DisciplineModelImplCopyWith<$Res>
    implements $DisciplineModelCopyWith<$Res> {
  factory _$$DisciplineModelImplCopyWith(_$DisciplineModelImpl value,
          $Res Function(_$DisciplineModelImpl) then) =
      __$$DisciplineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name});
}

/// @nodoc
class __$$DisciplineModelImplCopyWithImpl<$Res>
    extends _$DisciplineModelCopyWithImpl<$Res, _$DisciplineModelImpl>
    implements _$$DisciplineModelImplCopyWith<$Res> {
  __$$DisciplineModelImplCopyWithImpl(
      _$DisciplineModelImpl _value, $Res Function(_$DisciplineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DisciplineModelImpl(
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
@HiveType(typeId: 5, adapterName: 'DisciplineModelAdapter')
class _$DisciplineModelImpl extends _DisciplineModel {
  _$DisciplineModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'name') @HiveField(1) required this.name})
      : super._();

  factory _$DisciplineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisciplineModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'DisciplineModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisciplineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisciplineModelImplCopyWith<_$DisciplineModelImpl> get copyWith =>
      __$$DisciplineModelImplCopyWithImpl<_$DisciplineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisciplineModelImplToJson(
      this,
    );
  }
}

abstract class _DisciplineModel extends DisciplineModel {
  factory _DisciplineModel(
          {@JsonKey(name: 'id') @HiveField(0) required final int id,
          @JsonKey(name: 'name') @HiveField(1) required final String name}) =
      _$DisciplineModelImpl;
  _DisciplineModel._() : super._();

  factory _DisciplineModel.fromJson(Map<String, dynamic> json) =
      _$DisciplineModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DisciplineModelImplCopyWith<_$DisciplineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
