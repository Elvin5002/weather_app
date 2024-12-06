import 'package:dartz/dartz.dart';

import '../../data/models/hourly_weather.dart';
import '../../data/models/weather.dart';
import '../../data/models/weekly_weather.dart';

abstract class WeatherRepository {
  Future<Either<Exception, Weather>> getCurrentWeather();
  Future<Either<Exception, HourlyWeather>> getHourlyForecast();
  Future<Either<Exception, WeeklyWeather>> getWeeklyForecast();
  Future<Either<Exception, Weather>> getWeatherByCityName(String cityName);
}
