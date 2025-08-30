import 'package:flutter/material.dart';
import 'package:krishi_track/view/bottom_navigator/bloc/bottom_sheet_bloc.dart';
import 'package:krishi_track/view/introduction_screen/bloc/introduction_bloc.dart';
import 'package:krishi_track/view/splash_screen/bloc/splash_bloc.dart';
import 'package:krishi_track/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => SplashBloc()),
        Provider(create: (context) => IntroductionBloc()),
        Provider(create: (context) => BottomSheetBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KRISHI TRACK',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
