import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/get_weather_by_city_name_usecase.dart';
import 'package:weather_app/locator.dart';

import '../../data/models/weather.dart';

final cityForecastProvider = FutureProvider.autoDispose.family<Either<Exception, Weather>, String>(
  (ref, cityName) => locator<GetWeatherByCityNameUsecase>().call(params: cityName),
);
