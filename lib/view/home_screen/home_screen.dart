import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/controller/consts.dart';
import 'package:krishi_track/controller/user_data.dart';
import 'package:krishi_track/view/home_screen/bloc/home_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/custom_list.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/widgets/home_widget/home_appbar.dart';
import 'package:krishi_track/view/widgets/home_widget/microgreen_widget.dart';
import 'package:krishi_track/view/widgets/home_widget/myfield_widget.dart';
import 'package:krishi_track/view/widgets/home_widget/vegitable_widget.dart';
import 'package:krishi_track/view/widgets/home_widget/weather_widget.dart';
import 'package:weather/weather.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Weather? _weather;
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(WeatherDataEvent());
    });
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is WeatherPickedState) {
          print("weather");
          _weather = state.weather;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(0, mediaqueryHeight(.06, context)),
            child: HomeAppBar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeatherWidget(weather: _weather),
                MyFieldWidget(),
                                VegitableWidget()
,
                MicroGreenWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
