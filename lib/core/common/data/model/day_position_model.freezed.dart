// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayPositionModel _$DayPositionModelFromJson(Map<String, dynamic> json) {
  return _DayPositionModel.fromJson(json);
}

/// @nodoc
mixin _$DayPositionModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayPositionModelCopyWith<DayPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayPositionModelCopyWith<$Res> {
  factory $DayPositionModelCopyWith(
          DayPositionModel value, $Res Function(DayPositionModel) then) =
      _$DayPositionModelCopyWithImpl<$Res, DayPositionModel>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'index') int index});
}

/// @nodoc
class _$DayPositionModelCopyWithImpl<$Res, $Val extends DayPositionModel>
    implements $DayPositionModelCopyWith<$Res> {
  _$DayPositionModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DayPositionModelImplCopyWith<$Res>
    implements $DayPositionModelCopyWith<$Res> {
  factory _$$DayPositionModelImplCopyWith(_$DayPositionModelImpl value,
          $Res Function(_$DayPositionModelImpl) then) =
      __$$DayPositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'index') int index});
}

/// @nodoc
class __$$DayPositionModelImplCopyWithImpl<$Res>
    extends _$DayPositionModelCopyWithImpl<$Res, _$DayPositionModelImpl>
    implements _$$DayPositionModelImplCopyWith<$Res> {
  __$$DayPositionModelImplCopyWithImpl(_$DayPositionModelImpl _value,
      $Res Function(_$DayPositionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$DayPositionModelImpl(
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
class _$DayPositionModelImpl implements _DayPositionModel {
  const _$DayPositionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'index') required this.index});

  factory _$DayPositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayPositionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'index')
  final int index;

  @override
  String toString() {
    return 'DayPositionModel(id: $id, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayPositionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayPositionModelImplCopyWith<_$DayPositionModelImpl> get copyWith =>
      __$$DayPositionModelImplCopyWithImpl<_$DayPositionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayPositionModelImplToJson(
      this,
    );
  }
}

abstract class _DayPositionModel implements DayPositionModel {
  const factory _DayPositionModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'index') required final int index}) =
      _$DayPositionModelImpl;

  factory _DayPositionModel.fromJson(Map<String, dynamic> json) =
      _$DayPositionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'index')
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$DayPositionModelImplCopyWith<_$DayPositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
