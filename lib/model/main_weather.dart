import '../core/api/end_point.dart';

class MainWeather {
  final double temp,
      feelslike,
      tempMin,
      tempMax,
      pressure,
      humidity,
      seaLevel,
      grndLevel;

  MainWeather(
      {required this.temp,
      required this.feelslike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.humidity,
      required this.seaLevel,
      required this.grndLevel});

  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
        temp: json[ApiKey.temp],
        feelslike: json[ApiKey.feelsLike],
        tempMin: json[ApiKey.tempMin],
        tempMax: json[ApiKey.tempMax],
        pressure: json[ApiKey.pressure],
        humidity: json[ApiKey.humidity],
        seaLevel: json[ApiKey.seaLevel],
        grndLevel: json[ApiKey.grndLevel]);
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.temp: temp,
      ApiKey.feelsLike: feelslike,
      ApiKey.tempMin: tempMin,
      ApiKey.tempMax: tempMax,
      ApiKey.pressure: pressure,
      ApiKey.humidity: humidity,
      ApiKey.seaLevel: seaLevel,
      ApiKey.grndLevel: grndLevel
    };
  }
}
