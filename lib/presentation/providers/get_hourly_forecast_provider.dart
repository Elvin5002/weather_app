import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/hourly_weather.dart';
import '../../data/service/api_helper.dart';

final hourlyForecastProvider = FutureProvider.autoDispose<HourlyWeather>(
  (ref) => ApiHelper.getHourlyForecast(),
);
