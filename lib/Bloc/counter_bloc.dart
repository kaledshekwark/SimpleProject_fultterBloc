import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count =0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {

      if(event is IncramentEvent){
       count+=1;
       emit(CounterChangeValueState(Counter: count));
        }

      if(event is DecramentEvent){
      count-=1;
      emit(CounterChangeValueState(Counter: count));
      }
      if(event is ResetEvent){
        count=0;
        emit(CounterChangeValueState(Counter:count));
      }
    });
  }
}
