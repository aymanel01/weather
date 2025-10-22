import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../data/datasources/weather_remote_datasource.dart';
import '../data/repositories/weather_repository_impl.dart';
import '../domain/repositories/weather_repository.dart';
import '../domain/usecases/get_weather_data_usecase.dart';
import '../presentation/bloc/weather_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  sl.registerLazySingleton(() => Dio());

  // Data sources
  sl.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(dio: sl()),
  );

  // Repository
  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(remoteDataSource: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetWeatherDataUseCase(sl()));

  // BLoC
  sl.registerFactory(() => WeatherBloc(getWeatherDataUseCase: sl()));
}
