import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/weather.dart';
import '../../data/service/api_helper.dart';


final cityForecastProvider = FutureProvider.autoDispose.family<Weather, String>(
  (ref, cityName) => ApiHelper.getWeatherByCityName(
    cityName,
  ),
);
