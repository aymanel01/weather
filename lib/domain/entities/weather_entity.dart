import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    required double windSpeed,
    required double temperature,
    required double apparentTemperature,
    required DateTime time,
  }) = _WeatherEntity;
}
