import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStateValue = state.count;
      final incrementValue = currentStateValue + 1;
      return emit(CounterState(count: incrementValue));
    });
    on<Decrement>((event, emit) {
      final currentStateValue = state.count;
      final decrementValue = currentStateValue - 1;
      return emit(CounterState(count: decrementValue));
    });

    on<Reset>((event, emit) {
      var currentStateValue = state.count;
      final resetValue = currentStateValue = 0;
      return emit(CounterState(count: resetValue));
    });
  }
}
