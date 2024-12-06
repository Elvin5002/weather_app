import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/models/weather.dart';

import '../../domain/usecases/get_current_weather_usecase.dart';
import '../../locator.dart';

final currentWeatherProvider = FutureProvider.autoDispose<Either<Exception, Weather>>(
  (ref) => locator<GetCurrentWeatherUsecase>().call(),
);
