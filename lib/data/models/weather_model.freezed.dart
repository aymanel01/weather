// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  double get windSpeed => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get apparentTemperature => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
    WeatherModel value,
    $Res Function(WeatherModel) then,
  ) = _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({
    double windSpeed,
    double temperature,
    double apparentTemperature,
    DateTime time,
  });
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windSpeed = null,
    Object? temperature = null,
    Object? apparentTemperature = null,
    Object? time = null,
  }) {
    return _then(
      _value.copyWith(
            windSpeed: null == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            temperature: null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as double,
            apparentTemperature: null == apparentTemperature
                ? _value.apparentTemperature
                : apparentTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            time: null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
    _$WeatherModelImpl value,
    $Res Function(_$WeatherModelImpl) then,
  ) = __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double windSpeed,
    double temperature,
    double apparentTemperature,
    DateTime time,
  });
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
    _$WeatherModelImpl _value,
    $Res Function(_$WeatherModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windSpeed = null,
    Object? temperature = null,
    Object? apparentTemperature = null,
    Object? time = null,
  }) {
    return _then(
      _$WeatherModelImpl(
        windSpeed: null == windSpeed
            ? _value.windSpeed
            : windSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        temperature: null == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        apparentTemperature: null == apparentTemperature
            ? _value.apparentTemperature
            : apparentTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        time: null == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl({
    required this.windSpeed,
    required this.temperature,
    required this.apparentTemperature,
    required this.time,
  });

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final double windSpeed;
  @override
  final double temperature;
  @override
  final double apparentTemperature;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'WeatherModel(windSpeed: $windSpeed, temperature: $temperature, apparentTemperature: $apparentTemperature, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    windSpeed,
    temperature,
    apparentTemperature,
    time,
  );

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(this);
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel({
    required final double windSpeed,
    required final double temperature,
    required final double apparentTemperature,
    required final DateTime time,
  }) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  double get windSpeed;
  @override
  double get temperature;
  @override
  double get apparentTemperature;
  @override
  DateTime get time;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
