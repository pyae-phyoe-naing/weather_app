import 'package:flutter/material.dart';
import 'package:weather_app/data/model/search_city_model.dart';

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
                title: Text(city.name ?? ''),
                subtitle: Text(city.country ?? ''),
              );
            }),
      ),
    );
  }
}
