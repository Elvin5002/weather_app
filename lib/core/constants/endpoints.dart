import 'constants.dart';

class Endpoints {
  /// Base url
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';

  /// Base url for Weekly weather
  static const weeklyWeatherUrl =
      'https://api.open-meteo.com/v1/forecast?current=&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=auto';

  /// URL for current weather by coordinates
  static String weatherByCoordinates(double lat, double lon) =>
      '$baseUrl/weather?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  /// URL for forecast weather by coordinates
  static String forecastByCoordinates(double lat, double lon) =>
      '$baseUrl/forecast?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  /// URL for weather by city name
  static String weatherByCityName(String cityName) =>
      '$baseUrl/weather?q=$cityName&units=metric&appid=${Constants.apiKey}';

  /// URL for weekly forecast
  static String weeklyWeather(double lat, double lon) =>
      '$weeklyWeatherUrl&latitude=$lat&longitude=$lon';
}