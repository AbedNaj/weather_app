import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/rain.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/model/wind.dart';

class CurrentWeatherData {
  final Coord coord;
  final Weather weather;
  final String base, name;
  final MainWeather main;
  final int visibility;
  final Wind wind;
  final Rain rain;
  final Clouds clouds;
  final int dt, timezone, cod, id;

  CurrentWeatherData(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.name,
      required this.visibility,
      required this.wind,
      required this.rain,
      required this.main,
      required this.clouds,
      required this.dt,
      required this.timezone,
      required this.cod,
      required this.id});
}
