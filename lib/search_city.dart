import 'package:flutter/material.dart';
import 'package:flutter_fruits_search/custom_search_delegate.dart';
import 'package:flutter_fruits_search/cutom_data_search.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Option'),
        actions: [
          IconButton(
              onPressed: () {
                print('Icon button clicked');
                showSearch(
                  context: context,
                  delegate: DataSearch(),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
