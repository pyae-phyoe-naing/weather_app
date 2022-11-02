import 'package:flutter/material.dart';
import 'package:weather_app/screen/search_city/search_city_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SearchCityScreen(),debugShowCheckedModeBanner: false,);
  }
}
