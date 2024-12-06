import 'package:dartz/dartz.dart';

import 'package:weather_app/locator.dart';

import '../../domain/repositories/weather_repository.dart';
import '../models/hourly_weather.dart';
import '../models/weather.dart';
import '../models/weekly_weather.dart';
import '../service/weather_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Either<Exception, Weather>> getCurrentWeather() async =>
      await locator<WeatherService>().getCurrentWeather();

  @override
  Future<Either<Exception, HourlyWeather>> getHourlyForecast() async =>
      await locator<WeatherService>().getHourlyForecast();

  @override
  Future<Either<Exception, Weather>> getWeatherByCityName(String cityName) async =>
      await locator<WeatherService>().getWeatherByCityName(cityName);

  @override
  Future<Either<Exception, WeeklyWeather>> getWeeklyForecast() async =>
      await locator<WeatherService>().getWeeklyForecast();
}
