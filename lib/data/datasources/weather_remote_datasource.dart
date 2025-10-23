import 'package:dio/dio.dart';
import '../models/weather_model.dart';
import 'weather_mock_datasource.dart';

abstract class WeatherRemoteDataSource {
  Future<List<WeatherModel>> getWeatherData();
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final Dio dio;
  final String baseUrl;
  final WeatherMockDataSource mockDataSource;

  WeatherRemoteDataSourceImpl({
    required this.dio,
    this.baseUrl = 'http://127.0.0.1:3000',
    WeatherMockDataSource? mockDataSource,
  }) : mockDataSource = mockDataSource ?? WeatherMockDataSource();

  @override
  Future<List<WeatherModel>> getWeatherData() async {
    try {
      // Try to fetch from the real API first
      final response = await dio.get(
        '$baseUrl/weather',
        options: Options(
          headers: {'Content-Type': 'application/json'},
          receiveTimeout: const Duration(seconds: 10), // Give it 10 seconds
          sendTimeout: const Duration(seconds: 10),
        ),
      );

      if (response.statusCode == 200) {
        return _parseWeatherData(response.data);
      } else {
        throw Exception('API returned ${response.statusCode}');
      }
    } catch (e) {
      // If API fails, use mock data instead
      print('API failed, using mock data: $e');
      return await mockDataSource.getWeatherData();
    }
  }

  List<WeatherModel> _parseWeatherData(Map<String, dynamic> jsonData) {
    final List<WeatherModel> weatherList = [];

    final data = jsonData['data'];
    if (data != null && data.containsKey('timelines')) {
      final timelines = data['timelines'];
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
              weatherList.add(
                WeatherModel(
                  windSpeed: (values['windSpeed'] ?? 0.0).toDouble(),
                  temperature: (values['temperature'] ?? 0.0).toDouble(),
                  apparentTemperature: (values['apparentTemperature'] ?? 0.0)
                      .toDouble(),
                  time: DateTime.parse(interval['startTime']),
                ),
              );
            }
          }
        }
      }
    }

    return weatherList;
  }
}
