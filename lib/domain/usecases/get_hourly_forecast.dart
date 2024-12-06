import 'package:dartz/dartz.dart';

import 'package:weather_app/locator.dart';

import '../../core/usecase/usecase.dart';
import '../../data/models/hourly_weather.dart';
import '../repositories/weather_repository.dart';

class GetHourlyForecast extends Usecase<Either<Exception, HourlyWeather>, dynamic> {
  @override
  Future<Either<Exception, HourlyWeather>> call({params}) async =>
      await locator<WeatherRepository>().getHourlyForecast();
}
