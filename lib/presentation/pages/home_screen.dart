import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../data/service/api_helper.dart';
import 'forecast/forecast_report_screen.dart';
import 'search/search_screen.dart';
import 'settings/settings_screen.dart';
import 'weather/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  @override
  void initState() {
    ApiHelper.getCurrentWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) =>
              setState(() => _currentPageIndex = index),
          selectedIndex: _currentPageIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.home, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.search, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.wb_sunny_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.wb_sunny, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.settings, color: Colors.white),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  final _screens = const [
    WeatherScreen(),
    SearchScreen(),
    ForecastReportScreen(),
    SettingsScreen(),
  ];
}
