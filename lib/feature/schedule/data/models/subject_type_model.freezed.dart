// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectTypeModel _$SubjectTypeModelFromJson(Map<String, dynamic> json) {
  return _SubjectTypeModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectTypeModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectTypeModelCopyWith<SubjectTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectTypeModelCopyWith<$Res> {
  factory $SubjectTypeModelCopyWith(
          SubjectTypeModel value, $Res Function(SubjectTypeModel) then) =
      _$SubjectTypeModelCopyWithImpl<$Res, SubjectTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name});
}

/// @nodoc
class _$SubjectTypeModelCopyWithImpl<$Res, $Val extends SubjectTypeModel>
    implements $SubjectTypeModelCopyWith<$Res> {
  _$SubjectTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SubjectTypeModelImplCopyWith<$Res>
    implements $SubjectTypeModelCopyWith<$Res> {
  factory _$$SubjectTypeModelImplCopyWith(_$SubjectTypeModelImpl value,
          $Res Function(_$SubjectTypeModelImpl) then) =
      __$$SubjectTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'name') @HiveField(1) String name});
}

/// @nodoc
class __$$SubjectTypeModelImplCopyWithImpl<$Res>
    extends _$SubjectTypeModelCopyWithImpl<$Res, _$SubjectTypeModelImpl>
    implements _$$SubjectTypeModelImplCopyWith<$Res> {
  __$$SubjectTypeModelImplCopyWithImpl(_$SubjectTypeModelImpl _value,
      $Res Function(_$SubjectTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SubjectTypeModelImpl(
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
@HiveType(typeId: 8, adapterName: 'SubjectTypeModelAdapter')
class _$SubjectTypeModelImpl extends _SubjectTypeModel {
  _$SubjectTypeModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'name') @HiveField(1) required this.name})
      : super._();

  factory _$SubjectTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectTypeModelImplFromJson(json);

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
    return 'SubjectTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectTypeModelImplCopyWith<_$SubjectTypeModelImpl> get copyWith =>
      __$$SubjectTypeModelImplCopyWithImpl<_$SubjectTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectTypeModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectTypeModel extends SubjectTypeModel {
  factory _SubjectTypeModel(
          {@JsonKey(name: 'id') @HiveField(0) required final int id,
          @JsonKey(name: 'name') @HiveField(1) required final String name}) =
      _$SubjectTypeModelImpl;
  _SubjectTypeModel._() : super._();

  factory _SubjectTypeModel.fromJson(Map<String, dynamic> json) =
      _$SubjectTypeModelImpl.fromJson;

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
  _$$SubjectTypeModelImplCopyWith<_$SubjectTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
