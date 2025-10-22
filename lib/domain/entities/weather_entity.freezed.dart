// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WeatherEntity {
  double get windSpeed => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get apparentTemperature => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
    WeatherEntity value,
    $Res Function(WeatherEntity) then,
  ) = _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call({
    double windSpeed,
    double temperature,
    double apparentTemperature,
    DateTime time,
  });
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEntity
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
abstract class _$$WeatherEntityImplCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$WeatherEntityImplCopyWith(
    _$WeatherEntityImpl value,
    $Res Function(_$WeatherEntityImpl) then,
  ) = __$$WeatherEntityImplCopyWithImpl<$Res>;
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
class __$$WeatherEntityImplCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$WeatherEntityImpl>
    implements _$$WeatherEntityImplCopyWith<$Res> {
  __$$WeatherEntityImplCopyWithImpl(
    _$WeatherEntityImpl _value,
    $Res Function(_$WeatherEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherEntity
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
      _$WeatherEntityImpl(
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

class _$WeatherEntityImpl implements _WeatherEntity {
  const _$WeatherEntityImpl({
    required this.windSpeed,
    required this.temperature,
    required this.apparentTemperature,
    required this.time,
  });

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
    return 'WeatherEntity(windSpeed: $windSpeed, temperature: $temperature, apparentTemperature: $apparentTemperature, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEntityImpl &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    windSpeed,
    temperature,
    apparentTemperature,
    time,
  );

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      __$$WeatherEntityImplCopyWithImpl<_$WeatherEntityImpl>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  const factory _WeatherEntity({
    required final double windSpeed,
    required final double temperature,
    required final double apparentTemperature,
    required final DateTime time,
  }) = _$WeatherEntityImpl;

  @override
  double get windSpeed;
  @override
  double get temperature;
  @override
  double get apparentTemperature;
  @override
  DateTime get time;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
