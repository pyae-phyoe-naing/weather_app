import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/data/model/current_weather_model.dart';
import 'package:weather_app/data/model/search_city_model.dart';
import '../../const/api_const.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl:ApiConst.baseUrl)
abstract class WeatherApiService{
  factory WeatherApiService(Dio dio)=> _WeatherApiService(dio);
  
  @GET(ApiConst.searchCity)
  Future<List<SearchCityModel>>searchCity({@Query('q') required String city,@Query('limit') required int limt,@Query('appid') required String apiKey});

  @GET(ApiConst.currentWeather)
  Future<CurrentWeatherModel>currentWeather({@Query('lat') required double lat,@Query('lon') required double lon,@Query('appid') required String apiKey,@Query('units') required String unit});
}