import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_styles.dart';
import '../../../core/extensions/datetime.dart';
import '../../../core/extensions/strings.dart';
import '../../providers/get_current_weather.dart';
import '../../widgets/gradient_container.dart';
import 'widgets/hourly_forecast_view.dart';
import 'widgets/weather_info.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(currentWeatherProvider);
    return weatherData.when(
      data: (either) {
        return either.fold(
          (error) => Center(child: Text('Error: ${error.toString()}')),
          (weather) => GradientContainer(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity),
                  Text(
                    weather.name,
                    style: TextStyles.h1,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    DateTime.now().dateTime,
                    style: TextStyles.subtitleText,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 260,
                    child: Image.asset(
                      'assets/icons/${weather.weather[0].icon.replaceAll('n', 'd')}.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    weather.weather[0].description.capitalize,
                    style: TextStyles.h2,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              WeatherInfo(weather: weather),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'View full report',
                      style: TextStyle(
                        color: AppColors.lightBlue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const HourlyForecastView(),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return const Center(
          child: Text(
            'An error has occurred',
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
