import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/weather/day.dart';

class WeatherDay extends StatelessWidget {
  const WeatherDay({super.key, required this.day});

  final Day day;

  @override
  Widget build(BuildContext context) {
    return Text(day.toString());
  }
}
