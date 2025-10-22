import '../../domain/entities/weather_entity.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_remote_datasource.dart';
import '../models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<WeatherEntity>> getWeatherData() async {
    try {
      final weatherModels = await remoteDataSource.getWeatherData();
      return weatherModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to get weather data: $e');
    }
  }
}
