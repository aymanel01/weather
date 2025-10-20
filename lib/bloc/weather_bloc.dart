import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'weather_event.dart';
import 'weather_state.dart';
import '../models/weather_data.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<LoadWeatherData>(_onLoadWeatherData);
  }

  Future<void> _onLoadWeatherData(
    LoadWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    try {
      final response = await http.get(
        Uri.parse('http://10.0.2.2:3000/weather'),
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<WeatherData> weatherList = [];

        if (jsonData is Map && jsonData.containsKey('timelines')) {
          final timelines = jsonData['timelines'];
          if (timelines is List && timelines.isNotEmpty) {
            final hourlyData = timelines.firstWhere(
              (timeline) => timeline['timestep'] == '1h',
              orElse: () => timelines.first,
            );
            
            if (hourlyData != null && hourlyData['intervals'] != null) {
              final intervals = hourlyData['intervals'] as List;
              
              for (var interval in intervals) {
                final values = interval['values'];
                if (values != null) {
                  weatherList.add(WeatherData(
                    windSpeed: (values['windSpeed'] ?? 0.0).toDouble(),
                    temperature: (values['temperature'] ?? 0.0).toDouble(),
                    apparentTemperature: (values['apparentTemperature'] ?? 0.0).toDouble(),
                    time: DateTime.parse(interval['startTime']),
                  ));
                }
              }
            }
          }
        }

        emit(WeatherLoaded(weatherList));
      } else {
        emit(WeatherError('Erreur: ${response.statusCode}'));
      }
    } catch (e) {
      emit(WeatherError('Erreur: $e'));
    }
  }
}
