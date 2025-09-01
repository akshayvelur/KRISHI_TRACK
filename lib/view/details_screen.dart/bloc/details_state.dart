part of 'details_bloc.dart';

@immutable
sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}
class ItemFoundState extends DetailsState{
  final int index;

  ItemFoundState({required this.index});
}