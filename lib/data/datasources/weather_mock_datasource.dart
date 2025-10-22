import '../models/weather_model.dart';

class WeatherMockDataSource {
  Future<List<WeatherModel>> getWeatherData() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    final List<WeatherModel> weatherList = [];
    final now = DateTime.now();

    // Generate 24 hours of realistic weather data
    for (int i = 0; i < 24; i++) {
      final time = now.add(Duration(hours: i));
      weatherList.add(
        WeatherModel(
          windSpeed: 8.0 + (i * 0.3) + (i % 4) * 1.5,
          temperature: 18.0 + (i * 0.2) + (i % 6) * 2.0,
          apparentTemperature: 17.0 + (i * 0.25) + (i % 5) * 1.8,
          time: time,
        ),
      );
    }

    return weatherList;
  }
}
