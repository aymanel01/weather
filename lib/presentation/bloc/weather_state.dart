import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather_entity.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loading() = WeatherLoadingState;
  const factory WeatherState.loaded(List<WeatherEntity> weatherData) =
      WeatherLoaded;
  const factory WeatherState.error(String message) = WeatherErrorState;
}
