import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/model/search_city_model.dart';
import 'package:weather_app/data/weather_repository.dart';

part 'search_city_event.dart';
part 'search_city_state.dart';

class SearchCityBloc extends Bloc<SearchCityEvent, SearchCityState> {
  final WeatherRepository _weatherRepository = WeatherRepository();
  SearchCityBloc() : super(SearchCityInitial()) {
    on<SearchCity>((event, emit)async {
      try{
        emit(SearchCityLoading());
       List<SearchCityModel> cities= await _weatherRepository.getSearchCity(city: event.city);
       emit(SearchCitySuccess(cities));
      }catch(e){
        emit(SearchCityFail(e.toString()));
      }
    });
  }
}
