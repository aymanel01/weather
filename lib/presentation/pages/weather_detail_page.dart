import 'package:flutter/material.dart';
import '../../domain/entities/weather_entity.dart';

class WeatherDetailPage extends StatelessWidget {
  final WeatherEntity weatherData;

  const WeatherDetailPage({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${weatherData.time.day}/${weatherData.time.month}/${weatherData.time.year}',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTimeCard(),
            const SizedBox(height: 16),
            _buildTemperatureCard(),
            const SizedBox(height: 16),
            _buildWindCard(),
            const SizedBox(height: 16),
            _buildApparentTemperatureCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.blue[600]),
                const SizedBox(width: 8),
                Text(
                  'Heure',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${weatherData.time.hour}:${weatherData.time.minute.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '${weatherData.time.day}/${weatherData.time.month}/${weatherData.time.year}',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTemperatureCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.thermostat, color: Colors.orange[600]),
                const SizedBox(width: 8),
                Text(
                  'Température',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${weatherData.temperature.toStringAsFixed(1)}°C',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.orange[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _getTemperatureDescription(weatherData.temperature),
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWindCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.air, color: Colors.green[600]),
                const SizedBox(width: 8),
                Text(
                  'Vent',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${weatherData.windSpeed.toStringAsFixed(1)} km/h',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _getWindDescription(weatherData.windSpeed),
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApparentTemperatureCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.thermostat_outlined, color: Colors.blue[600]),
                const SizedBox(width: 8),
                Text(
                  'Température Ressentie',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${weatherData.apparentTemperature.toStringAsFixed(1)}°C',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _getApparentTemperatureDescription(
                weatherData.temperature,
                weatherData.apparentTemperature,
              ),
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  String _getTemperatureDescription(double temperature) {
    if (temperature < 0) return 'Très froid';
    if (temperature < 10) return 'Froid';
    if (temperature < 20) return 'Frais';
    if (temperature < 30) return 'Agréable';
    return 'Chaud';
  }

  String _getWindDescription(double windSpeed) {
    if (windSpeed < 5) return 'Calme';
    if (windSpeed < 15) return 'Léger';
    if (windSpeed < 30) return 'Modéré';
    if (windSpeed < 50) return 'Fort';
    return 'Très fort';
  }

  String _getApparentTemperatureDescription(
    double temperature,
    double apparentTemperature,
  ) {
    final difference = apparentTemperature - temperature;
    if (difference.abs() < 1) {
      return 'Ressenti identique à la température réelle';
    } else if (difference > 0) {
      return 'Ressenti plus chaud de ${difference.toStringAsFixed(1)}°C';
    } else {
      return 'Ressenti plus froid de ${(-difference).toStringAsFixed(1)}°C';
    }
  }
}
