import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    FirebaseAuth _auth=FirebaseAuth.instance;
    await Future.delayed(Duration(milliseconds: 2200));
    if(_auth.currentUser!=null){
      emit(NavigateToHomeScreensate());
    }else{emit(SplashToIntroductionOneState());}
    
  }
}
