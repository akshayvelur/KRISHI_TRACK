


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/view/introduction_screen/introduction.dart';
import 'package:krishi_track/view/splash_screen/bloc/splash_bloc.dart';
import 'package:krishi_track/view/utils/navigation_animation.dart';
import 'package:krishi_track/view/widgets/splash_screen_widget/splash_image.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashBloc>().add(SplashNavigateEvent());
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        // TODO: implement listener
        if(state is SplashToIntroductionOneState){
         Navigator.pushReplacement(context, FadeTransitionPageRoute(child: IntroductionScreen()));
        }
      },
      child: Scaffold(body: SplashImage()),
    );
  }
}
