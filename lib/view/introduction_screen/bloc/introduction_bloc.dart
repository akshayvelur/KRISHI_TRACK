import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:krishi_track/controller/authentication.dart';
import 'package:meta/meta.dart';

part 'introduction_event.dart';
part 'introduction_state.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(IntroductionInitial()) {
   
    on<LoginEvent>(loginEvent);
    on<LoadingSupportEvent>(loadingSupportEvent);
  }
  FutureOr<void> loginEvent(LoginEvent event, Emitter<IntroductionState> emit) async{
    FirebaseAuth _auth=FirebaseAuth.instance;
    if(_auth.currentUser!=null){
      emit(LoginState());
    }else{

   add(LoadingSupportEvent());
    
    await  GoogleSignInService.signInWithGoogle();
      if(_auth.currentUser!=null){
      
      emit(LoginState());
      }
    
    }
  }

  FutureOr<void> loadingSupportEvent(LoadingSupportEvent event, Emitter<IntroductionState> emit) async{
    await Future.delayed(Duration(seconds: 2));
      emit(LoadingState());}}