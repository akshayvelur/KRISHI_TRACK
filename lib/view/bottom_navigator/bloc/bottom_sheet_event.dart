part of 'bottom_sheet_bloc.dart';

@immutable
sealed class BottomSheetEvent {}
class SelectingEvent extends BottomSheetEvent{
  final int index;

  SelectingEvent({required this.index});
}