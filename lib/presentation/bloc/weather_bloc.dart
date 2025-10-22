import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_weather_data_usecase.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherDataUseCase getWeatherDataUseCase;

  WeatherBloc({required this.getWeatherDataUseCase})
    : super(const WeatherState.initial()) {
    on<LoadWeatherData>(_onLoadWeatherData);
    on<RefreshWeatherData>(_onRefreshWeatherData);
  }

  Future<void> _onLoadWeatherData(
    LoadWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());

    try {
      final weatherData = await getWeatherDataUseCase.call();
      emit(WeatherState.loaded(weatherData));
    } catch (e) {
      emit(WeatherState.error(e.toString()));
    }
  }

  Future<void> _onRefreshWeatherData(
    RefreshWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());

    try {
      final weatherData = await getWeatherDataUseCase.call();
      emit(WeatherState.loaded(weatherData));
    } catch (e) {
      emit(WeatherState.error(e.toString()));
    }
  }
}
