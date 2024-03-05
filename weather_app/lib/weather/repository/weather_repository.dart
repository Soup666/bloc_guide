import 'dart:convert';

import 'package:weather_app/weather/model/city/model.dart';
import 'package:weather_app/weather/model/weather/model.dart';
import 'package:weather_app/weather/weather.dart';

class WeatherRepository {
  WeatherRepository({required WeatherApi weatherApi})
      : _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  Future<City> getCity(String name) async {
    final String data = await _weatherApi.searchCity(name);
    return City.fromJson(data);
  }

  Future<Weather> getWeather(String cityKey) async {
    final String data = await _weatherApi.getWeather(cityKey);
    return Weather.fromJson(data);
  }
}
