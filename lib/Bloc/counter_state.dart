part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class CounterChangeValueState extends CounterState{
  int Counter;
  CounterChangeValueState({required this.Counter});

}