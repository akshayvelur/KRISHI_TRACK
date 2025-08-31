import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:krishi_track/firebase_options.dart';
import 'package:krishi_track/view/bottom_navigator/bloc/bottom_sheet_bloc.dart';
import 'package:krishi_track/view/home_screen/bloc/home_bloc.dart';
import 'package:krishi_track/view/introduction_screen/bloc/introduction_bloc.dart';
import 'package:krishi_track/view/splash_screen/bloc/splash_bloc.dart';
import 'package:krishi_track/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        Provider(create: (context) => HomeBloc(),)
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
