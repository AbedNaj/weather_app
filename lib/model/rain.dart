import 'package:weather_app/core/api/end_point.dart';

class Rain {
  final double rain;

  Rain({required this.rain});

  factory Rain.fromJson(Map<String, dynamic> myJson) {
    return Rain(rain: myJson[ApiKey.rain]);
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.rain: rain,
    };
  }
}
