import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_weather_data_usecase.dart';
import 'weather_event.dart';
import 'weather_state.dart';

// The main bloc that handles all weather-related state
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherDataUseCase getWeatherDataUseCase;

  WeatherBloc({required this.getWeatherDataUseCase})
    : super(const WeatherState.initial()) {
    // Register our event handlers
    on<LoadWeatherData>(_onLoadWeatherData);
    on<RefreshWeatherData>(_onRefreshWeatherData);
  }

  // Handle initial data loading
  Future<void> _onLoadWeatherData(
    LoadWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());

    try {
      final weatherData = await getWeatherDataUseCase.call();
      emit(WeatherState.loaded(weatherData));
    } catch (e) {
      // Something went wrong, show error
      emit(WeatherState.error(e.toString()));
    }
  }

  // Handle pull-to-refresh
  Future<void> _onRefreshWeatherData(
    RefreshWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());

    try {
      final weatherData = await getWeatherDataUseCase.call();
      emit(WeatherState.loaded(weatherData));
    } catch (e) {
      // Refresh failed, show error
      emit(WeatherState.error(e.toString()));
    }
  }
}
