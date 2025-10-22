import 'package:flutter/material.dart';
import '../../domain/entities/weather_entity.dart';
import 'weather_card.dart';

class WeatherList extends StatelessWidget {
  final List<WeatherEntity> weatherData;

  const WeatherList({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    if (weatherData.isEmpty) {
      return const Center(child: Text('Aucune donnée météo disponible'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        // This will be handled by the parent widget
      },
      child: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          final data = weatherData[index];
          return WeatherCard(weatherData: data);
        },
      ),
    );
  }
}
