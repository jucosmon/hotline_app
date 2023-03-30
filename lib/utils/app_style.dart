import 'package:flutter/material.dart';

Color primary = Colors.red;

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle = const TextStyle(
      fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);

  static TextStyle name = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle numbers =
      TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.w500);
}
