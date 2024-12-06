import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/weekly_weather.dart';
import '../../domain/usecases/get_weekly_forecast.dart';
import '../../locator.dart';

final weeklyForecastProvider = FutureProvider.autoDispose<Either<Exception, WeeklyWeather>>(
  (ref) => locator<GetWeeklyForecast>().call(),
);
