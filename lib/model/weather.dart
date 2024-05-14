import 'package:weather_app/core/api/end_point.dart';

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory Weather.fromJson(Map<String, dynamic> myjson) {
    return Weather(
        id: myjson[ApiKey.id],
        main: myjson[ApiKey.main],
        description: myjson[ApiKey.description],
        icon: myjson[ApiKey.icon]);
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.main: main,
      ApiKey.description: description,
      ApiKey.icon: icon
    };
  }
}
