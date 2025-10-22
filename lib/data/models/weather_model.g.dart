// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      windSpeed: (json['windSpeed'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      apparentTemperature: (json['apparentTemperature'] as num).toDouble(),
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'windSpeed': instance.windSpeed,
      'temperature': instance.temperature,
      'apparentTemperature': instance.apparentTemperature,
      'time': instance.time.toIso8601String(),
    };
