part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
class WeatherPickedState extends HomeState{
 final Weather weather;

  WeatherPickedState({required this.weather }); 
}
class MicroGreenOnTapState extends HomeState{
 final Map items;

  MicroGreenOnTapState({required this.items});

}
class VegitabelOnTapState extends HomeState{
 final Map items;

  VegitabelOnTapState({required this.items});


}