import 'dart:async';

import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:krishi_track/controller/consts.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<WeatherDataEvent>(weatherDataEvent);
    on<MicroGreenOnTapEvent>(microGreenOnTapEvent);
    on<VegitableOnTapEvent>(vegitableOnTapEvent);
  }

  FutureOr<void> weatherDataEvent(
    WeatherDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    final WeatherFactory _wf = WeatherFactory(OPENWEATHER_API_KEY);
    try{
    await _wf.currentWeatherByCityName("kozhikode").then((w) {
      print(w.areaName);
      emit(WeatherPickedState(weather: w));
    
    });
    }catch(e){
      log(e.toString());
    }

    
  }

  FutureOr<void> microGreenOnTapEvent(MicroGreenOnTapEvent event, Emitter<HomeState> emit) {
    emit(MicroGreenOnTapState(items: event.items));
  }

  FutureOr<void> vegitableOnTapEvent(VegitableOnTapEvent event, Emitter<HomeState> emit) {
        emit(VegitabelOnTapState(items: event.items));
  }
}
