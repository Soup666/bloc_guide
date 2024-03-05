import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/weather/model.dart';

class WeatherTemperature extends StatelessWidget {
  const WeatherTemperature({super.key, required this.temperature});

  final Temperature temperature;

  @override
  Widget build(BuildContext context) {
    return Text(temperature.toString());
  }
}
