import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:krishi_track/controller/consts.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<WeatherDataEvent>(weatherDataEvent);
  }

  FutureOr<void> weatherDataEvent(
    WeatherDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    final WeatherFactory _wf = WeatherFactory(OPENWEATHER_API_KEY);
    await _wf.currentWeatherByCityName("kozhikode").then((w) {
      print(w.areaName);
      emit(WeatherPickedState(weather: w));
    });

    
  }
}
