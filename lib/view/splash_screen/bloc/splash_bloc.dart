import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashNavigateEvent>(splashNavigateEvent);
  }

  FutureOr<void> splashNavigateEvent(
    SplashNavigateEvent event,
    Emitter<SplashState> emit,
  ) async {
    await Future.delayed(Duration(milliseconds: 2500));
    emit(SplashToIntroductionOneState());
  }
}
