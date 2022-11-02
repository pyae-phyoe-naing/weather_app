part of 'search_city_bloc.dart';

@immutable
abstract class SearchCityState {}

class SearchCityInitial extends SearchCityState {}

class SearchCityLoading extends SearchCityState{}

class SearchCitySuccess extends SearchCityState{
  final List<SearchCityModel> cities;
  SearchCitySuccess(this.cities);
}

class SearchCityFail extends SearchCityState{
  final String errMsg;
  SearchCityFail(this.errMsg);
}