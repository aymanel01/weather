import 'package:flutter/foundation.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/usecases/get_weather_data_usecase.dart';

enum WeatherState { initial, loading, loaded, error }

class WeatherViewModel extends ChangeNotifier {
  final GetWeatherDataUseCase getWeatherDataUseCase;

  WeatherViewModel({required this.getWeatherDataUseCase});

  WeatherState _state = WeatherState.initial;
  List<WeatherEntity> _weatherData = [];
  String _errorMessage = '';

  WeatherState get state => _state;
  List<WeatherEntity> get weatherData => _weatherData;
  String get errorMessage => _errorMessage;

  Future<void> loadWeatherData() async {
    _setState(WeatherState.loading);

    try {
      _weatherData = await getWeatherDataUseCase();
      _setState(WeatherState.loaded);
    } catch (e) {
      _errorMessage = e.toString();
      _setState(WeatherState.error);
    }
  }

  void _setState(WeatherState newState) {
    _state = newState;
    notifyListeners();
  }
}
