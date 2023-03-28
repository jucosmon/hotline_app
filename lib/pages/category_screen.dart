import 'package:flutter/material.dart';
import 'package:hotline_app/utils/app_style.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({super.key});

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
      ),
      backgroundColor: Styles.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //text
            SizedBox(
              height: 20,
            ),
            //categories
            Expanded(
              child: ListView.builder(
                itemCount: _category.length,
                itemBuilder: (context, index) {
                  return MySquare(
                      imagePath: _imagePath[index], child: _category[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySquare extends StatelessWidget {
  final String child;
  final String imagePath;

  MySquare({required this.child, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
      child: Container(
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(child),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
      ),
    );
  }
}
