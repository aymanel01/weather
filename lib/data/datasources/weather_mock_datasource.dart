import '../models/weather_model.dart';

// Mock data source for when the real API isn't available
class WeatherMockDataSource {
  Future<List<WeatherModel>> getWeatherData() async {
    // Simulate a bit of network delay
    await Future.delayed(const Duration(seconds: 1));

    final List<WeatherModel> weatherList = [];
    final now = DateTime.now();

    // Generate some fake but realistic weather data for the next 24 hours
    for (int i = 0; i < 24; i++) {
      final time = now.add(Duration(hours: i));

      // Add some variation to make it look more realistic
      final windVariation = (i % 4) * 1.5;
      final tempVariation = (i % 6) * 2.0;
      final apparentTempVariation = (i % 5) * 1.8;

      weatherList.add(
        WeatherModel(
          windSpeed: 8.0 + (i * 0.3) + windVariation,
          temperature: 18.0 + (i * 0.2) + tempVariation,
          apparentTemperature: 17.0 + (i * 0.25) + apparentTempVariation,
          time: time,
        ),
      );
    }

    return weatherList;
  }
}
