import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/screen/home/home_destination_place_item.dart';
import 'package:flutter_submission_dicoding/screen/home/home_navbar.dart';
import 'package:flutter_submission_dicoding/utils/dummy_places.dart';
import 'package:flutter_submission_dicoding/widget/search_bar.dart'
    as search_bar;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _keyword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeNavbar(),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Where are you \ngoing?',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: search_bar.SearchBar(
                    onSearch: _onSearch,
                  ),
                ),
                buildHorizontalList(context, "horizontal", _keyword),
                buildVerticalList("vertical"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildHorizontalList(
    BuildContext context,
    String potretScreen,
    String keyword,
  ) {
    final filteredMap = places.where((element) => element['name'] == keyword).toList();

    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
      ),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: filteredMap.isEmpty ? places.length : filteredMap.length,
        itemBuilder: (context, index) {
          Map place = filteredMap.isEmpty ? places.reversed.toList()[index] : filteredMap.reversed.toList()[index];
          return HomeDestinationPlaceItem(
            place: place,
            potretScreen: potretScreen,
          );
        },
      ),
    );
  }

  buildVerticalList(String potretScreen) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: places.isEmpty ? 0 : places.length,
        itemBuilder: (context, index) {
          Map place = places[index];
          return HomeDestinationPlaceItem(
            place: place,
            potretScreen: potretScreen,
          );
        },
      ),
    );
  }

  void _onSearch(String keyword) {
    setState(() {
      _keyword = keyword;
    });   
  }
}
