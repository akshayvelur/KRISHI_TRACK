import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitial()) 
  {
    on<ItemFountEvent>(itemFountEvent);
  }

  FutureOr<void> itemFountEvent(ItemFountEvent event, Emitter<DetailsState> emit) {
    emit(ItemFoundState(index: event.index));
  }
}
