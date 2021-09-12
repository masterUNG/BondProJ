import 'package:flutter/material.dart';

class MyConstant {
  // Color
  static final Color primary = Colors.deepOrange;
  static final Color dark = Colors.brown.shade900;
  static final Color light = Colors.orange.shade200;

  // Route
  static final String routeHome = '/home';

  // Image
  static final String logo = 'images/logo.png';

  // style
  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        color: dark,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: dark,
        fontWeight: FontWeight.bold,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );
}
