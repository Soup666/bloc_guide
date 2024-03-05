import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/weather/weather.dart';
import 'package:weather_app/weather/view/weather/view.dart';

class WeatherComponent extends StatelessWidget {
  const WeatherComponent({super.key, required this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            WeatherHeadline(headline: weather.headline),
            WeatherDailyForecast(dailyForecast: weather.dailyForecast)
          ],
        ));
  }
}
