import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/bloc/weather_bloc.dart';

class WeatherForm extends StatelessWidget {
  WeatherForm({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context
                  .read<WeatherBloc>()
                  .add(CityRequested(_controller.text)),
              child: const Text("Check Weather"),
            )
          ]),
    );
  }
}
