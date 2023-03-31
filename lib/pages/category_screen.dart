import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:hotline_app/utils/app_style.dart';

import 'home_screen.dart';
import 'numbers.dart';

class CategoryPage extends StatefulWidget {
  final int selectedPlaceIndex;
  const CategoryPage({super.key, required this.selectedPlaceIndex});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List _category = ['Hospitals', 'Police Stations', 'Fire Stations'];
  final List _imagePath = [
    'lib/images/hospital.png',
    'lib/images/police-station.png',
    'lib/images/fire-station.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Category'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            icon: const Icon(FluentSystemIcons.ic_fluent_home_regular),
          ),
        ],
      ),
      backgroundColor: Styles.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //text
            const SizedBox(
              height: 20,
            ),
            //categories
            Expanded(
              child: ListView.builder(
                itemCount: _category.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    imagePath: _imagePath[index],
                    child: _category[index],
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySquare extends StatefulWidget {
  final String child;
  final String imagePath;
  final int index;

  MySquare({required this.child, required this.imagePath, required this.index});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NumbersPage(selectedCategory: widget.child)),
          );
        },
        child: Container(
          height: 190,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.child),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
