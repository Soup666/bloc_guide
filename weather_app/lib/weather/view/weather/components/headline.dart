import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/weather/headline.dart';

class WeatherHeadline extends StatelessWidget {
  const WeatherHeadline({super.key, required this.headline});

  final Headline headline;

  @override
  Widget build(BuildContext context) {
    return Text(headline.toString());
  }
}
