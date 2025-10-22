import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather_entity.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required double windSpeed,
    required double temperature,
    required double apparentTemperature,
    required DateTime time,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

// Extension to convert WeatherModel to WeatherEntity
extension WeatherModelExtension on WeatherModel {
  WeatherEntity toEntity() {
    return WeatherEntity(
      windSpeed: windSpeed,
      temperature: temperature,
      apparentTemperature: apparentTemperature,
      time: time,
    );
  }
}
