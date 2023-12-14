import 'package:flutter/material.dart';
import 'package:wetter_app/classes/weather_repository.dart';
import 'package:wetter_app/widget/weather_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(36.0),
                child: Text(
                  'Weather App',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 48,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Center(
          child: WeatherApp(
            weatherData: WeatherRepository().getWeather(),
          ),
        ),
      ),
    );
  }
}
