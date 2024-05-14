import 'package:weather_app/core/api/end_point.dart';

class SysWeather {
  final int type, id, sunrise, sunset;
  final String country;

  SysWeather(
      {required this.type,
      required this.id,
      required this.sunrise,
      required this.sunset,
      required this.country});

  factory SysWeather.fromJson(Map<String, dynamic> myJson) {
    return SysWeather(
        type: myJson[ApiKey.type],
        id: myJson[ApiKey.sysId],
        sunrise: myJson[ApiKey.sunrise],
        sunset: myJson[ApiKey.sunset],
        country: myJson[ApiKey.country]);
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.type: type,
      ApiKey.sysId: id,
      ApiKey.sunrise: sunrise,
      ApiKey.sunset: sunset,
      ApiKey.country: country,
    };
  }
}
