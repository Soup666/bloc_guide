import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/city/model.dart';
import 'package:weather_app/weather/model/weather/model.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key, required this.city, required this.weather});

  final City city;
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Text("${city.englishName}\n${weather.headline.text}");
  }
}
