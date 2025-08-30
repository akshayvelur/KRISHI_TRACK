import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc() : super(BottomSheetInitial()) {
    on<SelectingEvent>(selectingEvent);
  }

  FutureOr<void> selectingEvent(SelectingEvent event, Emitter<BottomSheetState> emit) {
  
    emit(SelectedItemState(index: event.index));
  }
}
