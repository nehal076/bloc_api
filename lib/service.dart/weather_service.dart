import 'package:nested_scrolling/model/response/weather_response.dart';
import 'package:nested_scrolling/service.dart/api_service.dart';
import 'package:nested_scrolling/utils/url.dart';

class WeatherService {
  static Map<String, String> headers = {"Content-Type": "application/json"};
  static callApi(Map<String, dynamic> request) async {
    var response = await ApiService.makeRequest(
        Url.WEATHER_URL, RequestType.get, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;

    return weatherResponseFromJson(jsonString);
  }
}
