import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/weekly_weather.dart';
import '../../data/service/api_helper.dart';

final weeklyForecastProvider = FutureProvider.autoDispose<WeeklyWeather>(
  (ref) => ApiHelper.getWeeklyForecast(),
);
