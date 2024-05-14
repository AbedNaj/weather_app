import 'package:weather_app/core/api/end_point.dart';

class Clouds {
  final int clouds;

  Clouds({required this.clouds});

  factory Clouds.fromJson(Map<String, dynamic> myJson) {
    return Clouds(clouds: myJson[ApiKey.clouds]);
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.clouds: clouds,
    };
  }
}
