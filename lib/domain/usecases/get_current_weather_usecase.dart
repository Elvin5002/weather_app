import 'package:dartz/dartz.dart';

import '../../core/usecase/usecase.dart';
import '../../data/models/weather.dart';
import '../../locator.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeatherUsecase
    extends Usecase<Either<Exception, Weather>, dynamic> {
  @override
  Future<Either<Exception, Weather>> call({params}) async =>
      await locator<WeatherRepository>().getCurrentWeather();
}
