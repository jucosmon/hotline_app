import 'package:flutter/material.dart';
import 'package:hotline_app/pages/category_screen.dart';
import 'package:hotline_app/pages/home_screen.dart';
import 'package:hotline_app/pages/numbers.dart';
import 'package:hotline_app/pages/search_screen.dart';
import 'package:hotline_app/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency Hotline App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
