import 'package:dio/dio.dart';
import 'package:weather_app/const/api_const.dart';
import 'package:weather_app/data/model/current_weather_model.dart';
import 'package:weather_app/data/model/search_city_model.dart';
import 'package:weather_app/data/service/weather_api_service.dart';

class WeatherRepository{
  late WeatherApiService _weatherApiService;
  late String _apiKey;
  WeatherRepository(){
    Dio dio = Dio();
    _apiKey = ApiConst.apiKey;
     _weatherApiService = WeatherApiService(dio);
  }
  Future<List<SearchCityModel>>getSearchCity({required String city}) => _weatherApiService.searchCity(city: city, limt: 10, apiKey: _apiKey);
  Future<CurrentWeatherModel>getCurrentWeather({required double lat,required double lon})=> _weatherApiService.currentWeather(lat: lat, lon: lon, apiKey: _apiKey, unit: ApiConst.unit);
}