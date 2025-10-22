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
        title: const Text('Données Météo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
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
            initial: () => const WeatherLoading(),
            loading: () => const WeatherLoading(),
            loaded: (weatherData) => WeatherList(weatherData: weatherData),
            error: (message) => WeatherError(
              message: message,
              onRetry: () => context.read<WeatherBloc>().add(
                const WeatherEvent.refreshWeatherData(),
              ),
            ),
          );
        },
      ),
    );
  }
}
