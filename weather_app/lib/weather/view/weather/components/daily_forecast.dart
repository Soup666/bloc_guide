import 'package:flutter/material.dart';
import 'package:weather_app/weather/model/weather/model.dart';
import 'package:weather_app/weather/view/weather/view.dart';

class WeatherDailyForecast extends StatelessWidget {
  const WeatherDailyForecast({super.key, required this.dailyForecast});

  final DailyForecast dailyForecast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Date: ${dailyForecast.date.toString()}"),
        WeatherTemperature(temperature: dailyForecast.minTemp),
        WeatherTemperature(temperature: dailyForecast.maxTemp),
        WeatherDay(day: dailyForecast.day),
        WeatherDay(day: dailyForecast.night),
        Text(dailyForecast.mobileLink),
        Text(dailyForecast.link)
      ],
    );
  }
}
