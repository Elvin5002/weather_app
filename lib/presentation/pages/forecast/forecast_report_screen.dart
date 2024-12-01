import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_styles.dart';
import '../../../core/extensions/datetime.dart';
import '../../widgets/gradient_container.dart';
import '../weather/widgets/hourly_forecast_view.dart';
import 'widgets/weekly_forecast_view.dart';

class ForecastReportScreen extends StatelessWidget {
  const ForecastReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Forecast Report',
            style: TextStyles.h1,
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today',
              style: TextStyles.h2,
            ),
            Text(
              DateTime.now().dateTime,
              style: TextStyles.subtitleText,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const HourlyForecastView(),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Next Forecast',
              style: TextStyles.h2,
            ),
            Icon(
              Icons.calendar_month_rounded,
              color: AppColors.white,
            ),
          ],
        ),
        const SizedBox(height: 30),
        const WeeklyForecastView(),
      ],
    );
  }
}
