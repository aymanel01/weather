import 'package:flutter/material.dart';
import '../../domain/entities/weather_entity.dart';
import '../pages/weather_detail_page.dart';

class WeatherCard extends StatelessWidget {
  final WeatherEntity weatherData;

  const WeatherCard({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WeatherDetailPage(weatherData: weatherData),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${weatherData.time.day}/${weatherData.time.month}/${weatherData.time.year} ${weatherData.time.hour}:${weatherData.time.minute.toString().padLeft(2, '0')}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildWeatherItem(
                    context,
                    Icons.thermostat,
                    'Température',
                    '${weatherData.temperature.toStringAsFixed(1)}°C',
                    Colors.orange,
                  ),
                  _buildWeatherItem(
                    context,
                    Icons.thermostat_outlined,
                    'Ressenti',
                    '${weatherData.apparentTemperature.toStringAsFixed(1)}°C',
                    Colors.blue,
                  ),
                  _buildWeatherItem(
                    context,
                    Icons.air,
                    'Vent',
                    '${weatherData.windSpeed.toStringAsFixed(1)} km/h',
                    Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherItem(
    BuildContext context,
    IconData icon,
    String label,
    String value,
    Color color,
  ) {
    return Column(
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
