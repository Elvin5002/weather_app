import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/constants/endpoints.dart';
import '../models/hourly_weather.dart';
import '../models/weather.dart';
import '../models/weekly_weather.dart';
import 'getlocation.dart';

class WeatherService {
  double? lat;
  double? lon;
  final dio = Dio();

  //* Current Weather
  Future<Either<Exception, Weather>> getCurrentWeather() async {
    try {
      await fetchLocation();
      final url = Endpoints.weatherByCoordinates(lat!, lon!);
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return Right(Weather.fromJson(response.data));
      } else {
        log('Failed to load data: ${response.statusCode}');
        return Left(Exception('Failed to load data'));
      }
    } catch (e) {
      log('Error fetching data from: $e');
      return Left(Exception('Error fetching data'));
    }
  }

  //* Hourly Weather
  Future<Either<Exception, HourlyWeather>> getHourlyForecast() async {
    try {
      await fetchLocation();
      final url = Endpoints.forecastByCoordinates(lat!, lon!);
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return Right(HourlyWeather.fromJson(response.data));
      } else {
        log('Failed to load data: ${response.statusCode}');
        return Left(Exception('Failed to load data'));
      }
    } catch (e) {
      log('Error fetching data from: $e');
      return Left(Exception('Error fetching data'));
    }
  }

  //* Weekly weather
  Future<Either<Exception, WeeklyWeather>> getWeeklyForecast() async {
    try {
      await fetchLocation();
      final url = Endpoints.weeklyWeather(lat!, lon!);
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return Right(WeeklyWeather.fromJson(response.data));
      } else {
        log('Failed to load data: ${response.statusCode}');
        return Left(Exception('Failed to load data'));
      }
    } catch (e) {
      log('Error fetching data from: $e');
      return Left(Exception('Error fetching data'));
    }
  }

  //* Weather by City Name
  Future<Either<Exception, Weather>> getWeatherByCityName(String cityName) async {
    try {
      await fetchLocation();
      final url = Endpoints.weatherByCityName(cityName);
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return Right(Weather.fromJson(response.data));
      } else {
        log('Failed to load data: ${response.statusCode}');
        return Left(Exception('Failed to load data'));
      }
    } catch (e) {
      log('Error fetching data from: $e');
      return Left(Exception('Error fetching data'));
    }
  }

  Future<void> fetchLocation() async {
    if (lat != null && lon != null) return;
    final location = await getLocation();
    lat = location.latitude;
    lon = location.longitude;
  }
}
