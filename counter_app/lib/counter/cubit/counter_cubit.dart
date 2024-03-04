import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increaseCounter() =>
      emit(state.copyWith(count: state.count + 1, message: "Increased"));
  void decreaseCounter() =>
      emit(state.copyWith(count: state.count - 1, message: "Decreased"));
}
