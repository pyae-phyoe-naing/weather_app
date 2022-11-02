import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/search_city_bloc/search_city_bloc.dart';
import 'package:weather_app/data/model/search_city_model.dart';
import 'package:weather_app/screen/search_city/widget/city_list_widget.dart';
import 'package:weather_app/screen/search_city/widget/search_textfield_widget.dart';

class SearchCityScreen extends StatefulWidget {
  const SearchCityScreen({Key? key}) : super(key: key);

  @override
  _SearchCityScreenState createState() => _SearchCityScreenState();
}

class _SearchCityScreenState extends State<SearchCityScreen> {
  final TextEditingController _searchController = TextEditingController();
  final SearchCityBloc _searchCityBloc = SearchCityBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _searchCityBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Application'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            SearchTextFieldWidget(searchController: _searchController, searchCityBloc: _searchCityBloc),
            BlocBuilder<SearchCityBloc, SearchCityState>(
              builder: (context, state) {
                if (state is SearchCityLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SearchCityFail) {
                  return Text(state.errMsg);
                } else if (state is SearchCitySuccess) {
                  List<SearchCityModel> cities = state.cities;
                  if (cities.isEmpty) {
                    return const Center(
                      child: Text('Not Found'),
                    );
                  }
                  return CityListWidget(cities: cities);
                }
                return const SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}

