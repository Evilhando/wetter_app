import 'dart:math';

import 'package:wetter_app/classes/weather_data.dart';

class WeatherRepository {
  final List<WeatherData> _weatherDataList = [
    WeatherData(
        city: 'Berlin',
        temperature: 12.7,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Los Angeles',
        temperature: 28.5,
        weatherCondition: WeatherCondition.sunny),
    WeatherData(
        city: 'Moscow',
        temperature: -3.2,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Rio de Janeiro',
        temperature: 26.8,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Toronto',
        temperature: 8.9,
        weatherCondition: WeatherCondition.rainy),
    WeatherData(
        city: 'Seoul',
        temperature: 20.4,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Cape Town',
        temperature: 17.2,
        weatherCondition: WeatherCondition.windy),
    WeatherData(
        city: 'Mexico City',
        temperature: 22.6,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Beijing',
        temperature: 15.0,
        weatherCondition: WeatherCondition.foggy),
    WeatherData(
        city: 'Mumbai',
        temperature: 28.9,
        weatherCondition: WeatherCondition.humid),
    WeatherData(
        city: 'Istanbul',
        temperature: 14.3,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'New Delhi',
        temperature: 29.7,
        weatherCondition: WeatherCondition.sunny),
    WeatherData(
        city: 'Dubai',
        temperature: 32.5,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Chicago',
        temperature: 16.8,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Sydney',
        temperature: 23.5,
        weatherCondition: WeatherCondition.sunny),
    WeatherData(
        city: 'Amsterdam',
        temperature: 10.6,
        weatherCondition: WeatherCondition.rainy),
    WeatherData(
        city: 'Bangkok',
        temperature: 31.2,
        weatherCondition: WeatherCondition.humid),
    WeatherData(
        city: 'Lima',
        temperature: 21.0,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Nairobi',
        temperature: 18.2,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Stockholm',
        temperature: 6.4,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Rome',
        temperature: 19.8,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Cairo',
        temperature: 27.3,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Vancouver',
        temperature: 14.1,
        weatherCondition: WeatherCondition.rainy),
    WeatherData(
        city: 'Singapore',
        temperature: 26.6,
        weatherCondition: WeatherCondition.humid),
    WeatherData(
        city: 'Johannesburg',
        temperature: 22.7,
        weatherCondition: WeatherCondition.windy),
    WeatherData(
        city: 'Oslo',
        temperature: 3.9,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Helsinki',
        temperature: 1.5,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Madrid',
        temperature: 24.3,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Buenos Aires',
        temperature: 18.9,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Athens',
        temperature: 21.6,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Vienna',
        temperature: 9.8,
        weatherCondition: WeatherCondition.rainy),
    WeatherData(
        city: 'Brussels',
        temperature: 11.2,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Warsaw',
        temperature: 5.3,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Lisbon',
        temperature: 16.7,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Brasília',
        temperature: 29.0,
        weatherCondition: WeatherCondition.sunny),
    WeatherData(
        city: 'Kuala Lumpur',
        temperature: 28.4,
        weatherCondition: WeatherCondition.humid),
    WeatherData(
        city: 'Bogotá',
        temperature: 20.1,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Prague',
        temperature: 8.0,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Manila',
        temperature: 30.7,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Dublin',
        temperature: 10.1,
        weatherCondition: WeatherCondition.rainy),
    WeatherData(
        city: 'Ankara',
        temperature: 13.8,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Edinburgh',
        temperature: 7.5,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Hanoi',
        temperature: 29.3,
        weatherCondition: WeatherCondition.humid),
    WeatherData(
        city: 'Caracas',
        temperature: 25.5,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Ljubljana',
        temperature: 6.8,
        weatherCondition: WeatherCondition.snowy),
    WeatherData(
        city: 'Zurich',
        temperature: 11.9,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Bratislava',
        temperature: 7.2,
        weatherCondition: WeatherCondition.cloudy),
    WeatherData(
        city: 'Luxembourg City',
        temperature: 9.4,
        weatherCondition: WeatherCondition.clearSky),
    WeatherData(
        city: 'Panama City',
        temperature: 27.8,
        weatherCondition: WeatherCondition.sunny),
    WeatherData(
        city: 'Taipei',
        temperature: 26.1,
        weatherCondition: WeatherCondition.partlyCloudy),
    WeatherData(
        city: 'Tehran',
        temperature: 18.4,
        weatherCondition: WeatherCondition.clearSky),
  ];

  WeatherData getWeather() {
    // Zufällig ein Wetter aus der Liste auswählen
    final randomIndex = Random().nextInt(_weatherDataList.length);
    return _weatherDataList[randomIndex];
  }
}
