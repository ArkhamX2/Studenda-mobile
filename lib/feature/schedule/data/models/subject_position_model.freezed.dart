// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectPositionModel _$SubjectPositionModelFromJson(Map<String, dynamic> json) {
  return _SubjectPositionModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectPositionModel {
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  @HiveField(1)
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectPositionModelCopyWith<SubjectPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectPositionModelCopyWith<$Res> {
  factory $SubjectPositionModelCopyWith(SubjectPositionModel value,
          $Res Function(SubjectPositionModel) then) =
      _$SubjectPositionModelCopyWithImpl<$Res, SubjectPositionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'index') @HiveField(1) int index});
}

/// @nodoc
class _$SubjectPositionModelCopyWithImpl<$Res,
        $Val extends SubjectPositionModel>
    implements $SubjectPositionModelCopyWith<$Res> {
  _$SubjectPositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectPositionModelImplCopyWith<$Res>
    implements $SubjectPositionModelCopyWith<$Res> {
  factory _$$SubjectPositionModelImplCopyWith(_$SubjectPositionModelImpl value,
          $Res Function(_$SubjectPositionModelImpl) then) =
      __$$SubjectPositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) int id,
      @JsonKey(name: 'index') @HiveField(1) int index});
}

/// @nodoc
class __$$SubjectPositionModelImplCopyWithImpl<$Res>
    extends _$SubjectPositionModelCopyWithImpl<$Res, _$SubjectPositionModelImpl>
    implements _$$SubjectPositionModelImplCopyWith<$Res> {
  __$$SubjectPositionModelImplCopyWithImpl(_$SubjectPositionModelImpl _value,
      $Res Function(_$SubjectPositionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$SubjectPositionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 7, adapterName: 'SubjectPositionModelAdapter')
class _$SubjectPositionModelImpl extends _SubjectPositionModel {
  _$SubjectPositionModelImpl(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'index') @HiveField(1) required this.index})
      : super._();

  factory _$SubjectPositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectPositionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'index')
  @HiveField(1)
  final int index;

  @override
  String toString() {
    return 'SubjectPositionModel(id: $id, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectPositionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectPositionModelImplCopyWith<_$SubjectPositionModelImpl>
      get copyWith =>
          __$$SubjectPositionModelImplCopyWithImpl<_$SubjectPositionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectPositionModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectPositionModel extends SubjectPositionModel {
  factory _SubjectPositionModel(
          {@JsonKey(name: 'id') @HiveField(0) required final int id,
          @JsonKey(name: 'index') @HiveField(1) required final int index}) =
      _$SubjectPositionModelImpl;
  _SubjectPositionModel._() : super._();

  factory _SubjectPositionModel.fromJson(Map<String, dynamic> json) =
      _$SubjectPositionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'index')
  @HiveField(1)
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SubjectPositionModelImplCopyWith<_$SubjectPositionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
