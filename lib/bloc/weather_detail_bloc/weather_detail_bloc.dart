import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/model/current_weather_model.dart';
import 'package:weather_app/data/weather_repository.dart';

part 'weather_detail_event.dart';
part 'weather_detail_state.dart';

class WeatherDetailBloc extends Bloc<WeatherDetailEvent, WeatherDetailState> {
  final WeatherRepository _weatherRepository = WeatherRepository();
  WeatherDetailBloc() : super(WeatherDetailInitial()) {
    on<WeatherDetail>((event, emit) async{
      try{
        emit(WeatherDetailLoading());
        CurrentWeatherModel currentWeatherModel = await _weatherRepository.getCurrentWeather(lat: event.lat, lon: event.lon);
        emit(WeatherDetailSuccess(currentWeatherModel));
      }catch(e){
        emit(WeatherDetailFail('Something Wrong'));
      }
    });
  }
}
