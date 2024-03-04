import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  // [emit] is used to push an update to the state. We use the copyWith function
  // to push an identical state with an increase or decrease to the [count] int.
  // message is used for the SnackBar in the listener
  void increaseCounter() =>
      emit(state.copyWith(count: state.count + 1, message: "Increased"));

  void decreaseCounter() =>
      emit(state.copyWith(count: state.count - 1, message: "Decreased"));
}
