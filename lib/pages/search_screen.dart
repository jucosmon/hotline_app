import 'package:flutter/material.dart';

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
        title: const Text('Cities'),
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
                          builder: (context) =>
                              CityDetailsPage(cityName: city)),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Home'),
          ),
        ],
      ),
    );
  }
}

class CityDetailsPage extends StatelessWidget {
  final String cityName;

  CityDetailsPage({required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cityName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Details for $cityName'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
              child: const Text('Explore More Cities'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Home')),
          ],
        ),
      ),
    );
  }
}
