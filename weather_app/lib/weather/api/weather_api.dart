import 'package:weather_app/weather/auth/keys.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<String> searchCity(String city) async {
    final String endpoint =
        "http://dataservice.accuweather.com/locations/v1/cities/search?apikey=$apiKey&q=$city";

    final response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch city');
    }
  }

  Future<String> getWeather(String cityKey) async {
    final String endpoint =
        "http://dataservice.accuweather.com/forecasts/v1/daily/1day/$cityKey?apikey=$apiKey";

    final response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch weather');
    }
  }
}
