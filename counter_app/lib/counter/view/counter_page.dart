import 'package:counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      // BlocConsumer's merge the BlocListener and BlocBuilder wigets.
      // [Listener] is used for event handling. Nothing is rebuilt inside the
      // listener
      // [Builder] is used for rebuilding the widget tree when the state needs
      // rebuilding. This is where the Widget tree goes
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
              // Shows the current [count] state. Is automatically rebuilt when
              // the state changes
              Text("${state.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Buttons for calling functions on the state. Since we set
                  // up CounterCubit as a global Cubit, we can access it from
                  // anywhere within the tree.
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
