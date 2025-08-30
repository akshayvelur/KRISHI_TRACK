import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'introduction_event.dart';
part 'introduction_state.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(IntroductionInitial()) {
    on<IntroductionToBottomNavigationEvent>(introductionToBottomNavigationEvent);
  }
  

  FutureOr<void> introductionToBottomNavigationEvent(IntroductionToBottomNavigationEvent event, Emitter<IntroductionState> emit) {
  emit(IntroductionToBottomNavigationState());
  }
}
