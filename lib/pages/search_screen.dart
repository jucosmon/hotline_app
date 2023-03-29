import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hotline_app/pages/category_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:hotline_app/pages/home_screen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> cities = [
    'New York',
    'London',
    'Paris',
    'Tokyo',
    'Sydney',
    'Los Angeles',
    'Rio de Janeiro',
    'Dubai',
    'Berlin',
    'Moscow',
    'Toronto',
    'Barcelona',
    'Rome',
    'Hong Kong',
    'Mumbai',
    'Mumbai',
    'Mumbai',
    'Mumbai',
    'Mumbai',
    'Mumbai',
    'Mumbai',
    'Mumbai',
  ];
  String query = '';

  void _updateQuery(String newQuery) {
    setState(() {
      query = newQuery.toLowerCase();
    });
  }

  List<String> get filteredCities {
    return cities.where((city) => city.toLowerCase().contains(query)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Explore Places'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const HomeScreen();
                },
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: _updateQuery,
            decoration: const InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: CupertinoScrollbar(
              child: ListView.builder(
                itemCount: filteredCities.length,
                itemBuilder: (context, index) {
                  final city = filteredCities[index];
                  return ListTile(
                    title: Text(city),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryPage()),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
