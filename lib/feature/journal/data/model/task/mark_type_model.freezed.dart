// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkTypeModel _$MarkTypeModelFromJson(Map<String, dynamic> json) {
  return _MarkTypeModel.fromJson(json);
}

/// @nodoc
mixin _$MarkTypeModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'minValue')
  @HiveField(2)
  int get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxValue')
  @HiveField(3)
  int get maxValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkTypeModelCopyWith<MarkTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkTypeModelCopyWith<$Res> {
  factory $MarkTypeModelCopyWith(
          MarkTypeModel value, $Res Function(MarkTypeModel) then) =
      _$MarkTypeModelCopyWithImpl<$Res, MarkTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name,
      @JsonKey(name: 'minValue') @HiveField(2) int minValue,
      @JsonKey(name: 'maxValue') @HiveField(3) int maxValue,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class _$MarkTypeModelCopyWithImpl<$Res, $Val extends MarkTypeModel>
    implements $MarkTypeModelCopyWith<$Res> {
  _$MarkTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkTypeModelImplCopyWith<$Res>
    implements $MarkTypeModelCopyWith<$Res> {
  factory _$$MarkTypeModelImplCopyWith(
          _$MarkTypeModelImpl value, $Res Function(_$MarkTypeModelImpl) then) =
      __$$MarkTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name,
      @JsonKey(name: 'minValue') @HiveField(2) int minValue,
      @JsonKey(name: 'maxValue') @HiveField(3) int maxValue,
      @JsonKey(name: 'createdAt') @HiveField(4) DateTime createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) DateTime updatedAt});
}

/// @nodoc
class __$$MarkTypeModelImplCopyWithImpl<$Res>
    extends _$MarkTypeModelCopyWithImpl<$Res, _$MarkTypeModelImpl>
    implements _$$MarkTypeModelImplCopyWith<$Res> {
  __$$MarkTypeModelImplCopyWithImpl(
      _$MarkTypeModelImpl _value, $Res Function(_$MarkTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MarkTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 11, adapterName: 'AssessmentTypeModelAdapter')
class _$MarkTypeModelImpl extends _MarkTypeModel {
  _$MarkTypeModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'name') @HiveField(1) required this.name,
      @JsonKey(name: 'minValue') @HiveField(2) required this.minValue,
      @JsonKey(name: 'maxValue') @HiveField(3) required this.maxValue,
      @JsonKey(name: 'createdAt') @HiveField(4) required this.createdAt,
      @JsonKey(name: 'updatedAt') @HiveField(5) required this.updatedAt})
      : super._();

  factory _$MarkTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  final String name;
  @override
  @JsonKey(name: 'minValue')
  @HiveField(2)
  final int minValue;
  @override
  @JsonKey(name: 'maxValue')
  @HiveField(3)
  final int maxValue;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MarkTypeModel(id: $id, name: $name, minValue: $minValue, maxValue: $maxValue, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, minValue, maxValue, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkTypeModelImplCopyWith<_$MarkTypeModelImpl> get copyWith =>
      __$$MarkTypeModelImplCopyWithImpl<_$MarkTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkTypeModelImplToJson(
      this,
    );
  }
}

abstract class _MarkTypeModel extends MarkTypeModel {
  factory _MarkTypeModel(
      {@JsonKey(name: 'id') @HiveField(0) required final int id,
      @JsonKey(name: 'name') @HiveField(1) required final String name,
      @JsonKey(name: 'minValue') @HiveField(2) required final int minValue,
      @JsonKey(name: 'maxValue') @HiveField(3) required final int maxValue,
      @JsonKey(name: 'createdAt')
      @HiveField(4)
      required final DateTime createdAt,
      @JsonKey(name: 'updatedAt')
      @HiveField(5)
      required final DateTime updatedAt}) = _$MarkTypeModelImpl;
  _MarkTypeModel._() : super._();

  factory _MarkTypeModel.fromJson(Map<String, dynamic> json) =
      _$MarkTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name;
  @override
  @JsonKey(name: 'minValue')
  @HiveField(2)
  int get minValue;
  @override
  @JsonKey(name: 'maxValue')
  @HiveField(3)
  int get maxValue;
  @override
  @JsonKey(name: 'createdAt')
  @HiveField(4)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  @HiveField(5)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MarkTypeModelImplCopyWith<_$MarkTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
