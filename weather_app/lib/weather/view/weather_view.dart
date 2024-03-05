import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/bloc/weather_bloc.dart';
import 'package:weather_app/weather/model/city/model.dart';
import 'package:weather_app/weather/model/weather/model.dart';
import 'package:weather_app/weather/view/weather/form.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key, required this.city, required this.weather});

  final City city;
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => context.read<WeatherBloc>().add(CityReset()),
                  child: const Text("Reset")),
              WeatherComponent(weather: weather)
            ]));
  }
}
