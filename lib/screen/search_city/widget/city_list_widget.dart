import 'package:flutter/material.dart';
import 'package:weather_app/data/model/search_city_model.dart';
import 'package:weather_app/screen/weather_detail/weather_detail_screen.dart';

class CityListWidget extends StatelessWidget {
  const CityListWidget({
    Key? key,
    required this.cities,
  }) : super(key: key);

  final List<SearchCityModel> cities;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              SearchCityModel city = cities[index];
              return ListTile(
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> WeatherDetailScreen(lat: city.lat ?? 0 ,lon: city.lon ?? 0))),
                title: Text(city.name ?? ''),
                subtitle: Text(city.country ?? ''),
              );
            }),
      ),
    );
  }
}
