import 'package:counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.message),
          duration: const Duration(milliseconds: 300),
        ));
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${state.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () =>
                          context.read<CounterCubit>().increaseCounter(),
                      child: const Text("+")),
                  const SizedBox(width: 25),
                  ElevatedButton(
                      onPressed: () =>
                          context.read<CounterCubit>().decreaseCounter(),
                      child: const Text("-")),
                ],
              ),
            ],
          )),
        );
      },
    );
  }
}
