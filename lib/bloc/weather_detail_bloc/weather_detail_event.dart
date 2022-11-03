part of 'weather_detail_bloc.dart';

@immutable
abstract class WeatherDetailEvent {}

class WeatherDetail extends WeatherDetailEvent{
  final double lat;
  final double lon;
  WeatherDetail(this.lat,this.lon);
}
