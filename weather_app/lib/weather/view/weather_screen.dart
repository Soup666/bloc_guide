import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/bloc/weather_bloc.dart';
import 'package:weather_app/weather/view/view.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
          if (state is WeatherLoading) {
            return const CircularProgressIndicator();
          } else if (state is WeatherLoaded) {
            final city = state.city;
            final weather = state.weather;
            return WeatherView(
              city: city,
              weather: weather,
            );
          } else if (state is WeatherLoadError) {
            return Text("Error: ${state.error}");
          } else {
            return WeatherForm();
          }
        }),
      ),
    );
  }
}
