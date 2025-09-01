part of 'details_bloc.dart';

@immutable
sealed class DetailsEvent {}
class ItemFountEvent extends DetailsEvent{
  final int index;

  ItemFountEvent({required this.index});
}