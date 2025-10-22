import '../entities/weather_entity.dart';
import '../repositories/weather_repository.dart';

class GetWeatherDataUseCase {
  final WeatherRepository repository;

  GetWeatherDataUseCase(this.repository);

  Future<List<WeatherEntity>> call() async {
    return await repository.getWeatherData();
  }
}
