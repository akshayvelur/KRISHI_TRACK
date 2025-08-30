part of 'bottom_sheet_bloc.dart';

@immutable
sealed class BottomSheetState {}

final class BottomSheetInitial extends BottomSheetState {}
class SelectedItemState extends BottomSheetState{
  final int index;

  SelectedItemState({required this.index});
}