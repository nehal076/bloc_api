import 'dart:convert';

List<WeatherResponse> weatherResponseFromJson(String str) =>
    List<WeatherResponse>.from(
        json.decode(str).map((x) => WeatherResponse.fromJson(x)));

String weatherResponseToJson(List<WeatherResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WeatherResponse {
  WeatherResponse({
    required this.title,
    required this.locationType,
    required this.woeid,
    required this.lattLong,
  });

  String title;
  String locationType;
  int woeid;
  String lattLong;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        title: json["title"],
        locationType: json["location_type"],
        woeid: json["woeid"],
        lattLong: json["latt_long"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "location_type": locationType,
        "woeid": woeid,
        "latt_long": lattLong,
      };
}
