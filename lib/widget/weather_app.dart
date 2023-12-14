import 'package:flutter/material.dart';
import 'package:wetter_app/classes/weather_data.dart';
import 'package:wetter_app/classes/weather_repository.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key, required WeatherData weatherData})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  late WeatherData weatherData;
  final WeatherRepository weatherRepository = WeatherRepository();

  @override
  void initState() {
    super.initState();
    // Lade die anfänglichen Wetterdaten
    weatherData = weatherRepository.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weatherData.city,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 50,
            ),
          ),
          Text(
            '${weatherData.temperature}°C',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
          Text(
            _getWeatherConditionString(weatherData.weatherCondition),
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                weatherData = weatherRepository.getWeather();
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }

  String _getWeatherConditionString(WeatherCondition condition) {
    switch (condition) {
      case WeatherCondition.sunny:
        return 'Sonnig';
      case WeatherCondition.cloudy:
        return 'Bewölkt';
      case WeatherCondition.rainy:
        return 'Regnerisch';
      case WeatherCondition.snowy:
        return 'Schnee';
      case WeatherCondition.clearSky:
        return 'Klarer Himmel';
      case WeatherCondition.windy:
        return 'Windig';
      case WeatherCondition.humid:
        return 'Feucht';
      case WeatherCondition.foggy:
        return 'Nebelig';
      case WeatherCondition.stormy:
        return 'Stürmisch';
      case WeatherCondition.partlyCloudy:
        return 'Teilweise bewölkt';
      default:
        return 'Unbekannt';
    }
  }
}
