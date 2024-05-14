import 'package:weather_app/core/api/end_point.dart';

class Coord {
  final double lon;
  final double lat;

  Coord({required this.lon, required this.lat});

  factory Coord.fromJson(Map<String, dynamic> myJson) {
    return Coord(
      lon: myJson[ApiKey.lon],
      lat: myJson[ApiKey.lat],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.lon: lon,
      ApiKey.lat: lat,
    };
  }
}
