import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection/injection_container.dart' as di;
import 'presentation/pages/weather_page.dart';
import 'presentation/bloc/weather_bloc.dart';
import 'presentation/bloc/weather_event.dart';

// Main entry point - pretty standard stuff
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init(); // Setup our dependencies
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App', // Simple title, nothing fancy
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ), // Blue feels right for weather
      ),
      home: BlocProvider(
        // Initialize the bloc and trigger initial data load
        create: (context) =>
            di.sl<WeatherBloc>()..add(const WeatherEvent.loadWeatherData()),
        child: const WeatherPage(),
      ),
    );
  }
}
