import 'package:equatable/equatable.dart';

class WeatherData extends Equatable {
  final double windSpeed;
  final double temperature;
  final double apparentTemperature;
  final DateTime time;

  const WeatherData({
    required this.windSpeed,
    required this.temperature,
    required this.apparentTemperature,
    required this.time,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      windSpeed: (json['windSpeed'] ?? 0.0).toDouble(),
      temperature: (json['temperature'] ?? 0.0).toDouble(),
      apparentTemperature: (json['apparentTemperature'] ?? 0.0).toDouble(),
      time: DateTime.parse(json['time'] ?? DateTime.now().toIso8601String()),
    );
  }

  @override
  List<Object?> get props => [
    windSpeed,
    temperature,
    apparentTemperature,
    time,
  ];
}
