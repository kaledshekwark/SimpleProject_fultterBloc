part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
class IncramentEvent extends CounterEvent{}
class DecramentEvent extends CounterEvent{}
class ResetEvent extends CounterEvent{}