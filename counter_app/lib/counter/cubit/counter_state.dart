part of 'counter_cubit.dart';

class CounterState {
  const CounterState({this.count = 0, this.message = ""});

  final int count;
  final String message;

  CounterState copyWith({int? count, String? message}) {
    return CounterState(
        count: count ?? this.count, message: message ?? this.message);
  }
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}
