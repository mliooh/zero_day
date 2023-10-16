class WeatherData {
  final String location;
  final String city;
  final String temperature;
  final String weatherIconUrl;
  final String relativeTemperature;
  final String condition;
  final String dayOrNight;

  WeatherData(
      {required this.location,
      required this.city,
      required this.temperature,
      required this.weatherIconUrl,
      required this.relativeTemperature,
      required this.condition,
      required this.dayOrNight});
}
