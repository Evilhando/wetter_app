class WeatherData {
  String city;
  double temperature;
  WeatherCondition weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });
}

enum WeatherCondition {
  sunny,
  cloudy,
  rainy,
  snowy,
  clearSky,
  windy,
  humid,
  foggy,
  stormy,
  partlyCloudy,
}
