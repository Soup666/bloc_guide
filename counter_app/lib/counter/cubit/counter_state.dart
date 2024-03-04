part of 'counter_cubit.dart';

class CounterState {
  const CounterState({this.count = 0, this.message = ""});

  final int count;
  final String message;

  // Common practice for const objects. Provides easy copying of the state with
  // named parameters. Any not provided will be copied from the current state.
  CounterState copyWith({int? count, String? message}) {
    return CounterState(
        count: count ?? this.count, message: message ?? this.message);
  }
}

// Initial State. Can be replaced with CounterState() since the
// default constructor sets count to 0 anyway. Here for clarity
final class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}
