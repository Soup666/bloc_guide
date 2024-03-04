import 'package:counter_app/counter/counter.dart';
import 'package:counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Here we create the Cubit globally. For larger app's these would be
      // scoped. Any widget under the tree of this point can access the Cubit
      // from the context.
      home: BlocProvider(
          create: (context) => CounterCubit(), child: const CounterPage()),
    );
  }
}
