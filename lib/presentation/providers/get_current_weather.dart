import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/service/api_helper.dart';

final currentWeatherProvider = FutureProvider.autoDispose(
  (ref) => ApiHelper.getCurrentWeather(),
);
