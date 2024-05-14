import 'package:weather_app/core/api/end_point.dart';

class Wind {
  final double speed, deg, gust;

  Wind({required this.speed, required this.deg, required this.gust});

  factory Wind.fromJson(Map<String, dynamic> myjson) {
    return Wind(
        speed: myjson[ApiKey.speed],
        deg: myjson[ApiKey.deg],
        gust: myjson[ApiKey.gust]);
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.speed: speed,
      ApiKey.deg: deg,
      ApiKey.gust: gust,
    };
  }
}
