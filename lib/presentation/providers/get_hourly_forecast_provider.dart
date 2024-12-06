import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/hourly_weather.dart';
import '../../domain/usecases/get_hourly_forecast.dart';
import '../../locator.dart';

final hourlyForecastProvider = FutureProvider.autoDispose<Either<Exception, HourlyWeather>>(
  (ref) => locator<GetHourlyForecast>().call(),
);
