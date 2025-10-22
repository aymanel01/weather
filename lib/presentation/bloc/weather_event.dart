import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.freezed.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadWeatherData() = LoadWeatherData;
  const factory WeatherEvent.refreshWeatherData() = RefreshWeatherData;
}
