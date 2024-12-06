import 'package:get_it/get_it.dart';

import 'data/repositories/weather_repository_impl.dart';
import 'data/service/weather_service.dart';
import 'domain/repositories/weather_repository.dart';
import 'domain/usecases/get_current_weather_usecase.dart';
import 'domain/usecases/get_hourly_forecast.dart';
import 'domain/usecases/get_weather_by_city_name_usecase.dart';
import 'domain/usecases/get_weekly_forecast.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => WeatherService());

  locator
      .registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl());

  locator.registerLazySingleton(() => GetCurrentWeatherUsecase());
  locator.registerLazySingleton(() => GetHourlyForecast());
  locator.registerLazySingleton(() => GetWeatherByCityNameUsecase());
  locator.registerLazySingleton(() => GetWeeklyForecast());

}
