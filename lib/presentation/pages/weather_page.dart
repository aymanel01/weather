import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/weather_bloc.dart';
import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';
import '../widgets/weather_list.dart';
import '../widgets/weather_loading.dart';
import '../widgets/weather_error.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Données Météo'), // Weather data in French
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Trigger a refresh when user taps the refresh button
              context.read<WeatherBloc>().add(
                const WeatherEvent.refreshWeatherData(),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return state.when(
            initial: () => const WeatherLoading(), // Show loading on first load
            loading: () =>
                const WeatherLoading(), // Show loading during refresh
            loaded: (weatherData) =>
                WeatherList(weatherData: weatherData), // Show the data
            error: (message) => WeatherError(
              message: message,
              onRetry: () => context.read<WeatherBloc>().add(
                const WeatherEvent.refreshWeatherData(), // Retry on error
              ),
            ),
          );
        },
      ),
    );
  }
}
