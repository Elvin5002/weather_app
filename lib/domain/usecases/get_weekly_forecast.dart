
import 'package:dartz/dartz.dart';

import '../../core/usecase/usecase.dart';
import '../../data/models/weekly_weather.dart';
import '../../locator.dart';
import '../repositories/weather_repository.dart';

class GetWeeklyForecast extends Usecase<Either<Exception, WeeklyWeather>, dynamic> {
  @override
  Future<Either<Exception, WeeklyWeather>> call({params}) async =>
      await locator<WeatherRepository>().getWeeklyForecast();
}