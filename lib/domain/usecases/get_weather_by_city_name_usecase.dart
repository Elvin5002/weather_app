import 'package:dartz/dartz.dart';

import '../../core/usecase/usecase.dart';
import '../../data/models/weather.dart';
import '../../locator.dart';
import '../repositories/weather_repository.dart';

class GetWeatherByCityNameUsecase extends Usecase<Either<Exception, Weather>, String> {
  @override
  Future<Either<Exception, Weather>> call({String? params}) async =>
      await locator<WeatherRepository>().getWeatherByCityName(params!);
  
}
