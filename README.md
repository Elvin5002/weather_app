# Weather App

A modern and user-friendly weather application built with **Flutter**. This app provides accurate and up-to-date weather information, including current conditions, forecasts, and more.

## Features

- **Current Weather**: Displays real-time temperature, weather condition, and location.
- **Forecast**: 7-day weather forecast with detailed information.
- **Search**: Search weather conditions for any city worldwide.
- **Responsive UI**: Optimized for both Android and iOS devices.
- **Animations**: Engaging animations for weather conditions.
- **Dark Mode**: Support for light and dark themes.

## Screenshots

| Home Screen | Search Screen | Forecast Screen |
|-------------|---------------|-----------------|
| ![Home Screen](screenshots/home.png) | ![Search Screen](screenshots/search.png) | ![Forecast Screen](screenshots/forecast.png) |

## Technologies Used

- **Flutter**: Framework for building cross-platform applications.
- **Dart**: Programming language for Flutter.
- **API Integration**: Retrieves weather data using [OpenWeatherMap API](https://openweathermap.org/api).
- **Provider**: State management solution.
- **HTTP**: For API calls.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/weather-app.git
   cd weather-app
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

4. Make sure to add your API key in the `lib/constants/api_constants.dart` file:

   ```dart
   const String apiKey = 'YOUR_API_KEY';
   ```

## How to Use

1. Launch the app on your device or emulator.
2. View current weather conditions on the home screen.
3. Use the search bar to look up weather details for other cities.
4. Check the detailed forecast for upcoming days.

## Upcoming Features

- **Weather Alerts**: Notifications for severe weather conditions.
- **Localization**: Support for multiple languages.
- **Customizable Units**: Switch between Celsius and Fahrenheit.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push them to your fork.
4. Submit a pull request explaining your changes.

---

### Acknowledgments

- [OpenWeatherMap API](https://openweathermap.org/api) for providing weather data.
- Flutter community for their excellent tools and documentation.

