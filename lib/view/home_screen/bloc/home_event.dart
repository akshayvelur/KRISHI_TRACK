part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}
class WeatherDataEvent extends HomeEvent{}
class MicroGreenOnTapEvent extends HomeEvent{
 final Map items;

  MicroGreenOnTapEvent({required this.items});
}
class VegitableOnTapEvent extends HomeEvent{
 final Map items;

  VegitableOnTapEvent({required this.items});
}