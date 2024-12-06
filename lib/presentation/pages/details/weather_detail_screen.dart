import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/text_styles.dart';
import '../../../core/extensions/datetime.dart';
import '../../../core/extensions/strings.dart';
import '../../providers/get_city_forecast_provider.dart';
import '../../widgets/gradient_container.dart';
import '../weather/widgets/weather_info.dart';

class WeatherDetailScreen extends ConsumerWidget {
  const WeatherDetailScreen({
    super.key,
    required this.cityName,
  });

  final String cityName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch((cityForecastProvider(cityName)));

    return Scaffold(
      body: weatherData.when(
        data: (either) {
          return either.fold(
            (error) => Center(child: Text('Error: ${error.toString()}')),
            (weather) => GradientContainer(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    Text(
                      weather.name,
                      style: TextStyles.h1,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      DateTime.now().dateTime,
                      style: TextStyles.subtitleText,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        'assets/icons/${weather.weather[0].icon.replaceAll('n', 'd')}.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      weather.weather[0].description.capitalize,
                      style: TextStyles.h2,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                WeatherInfo(weather: weather),
                const SizedBox(height: 15),
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
      ),
    );
  }
}
