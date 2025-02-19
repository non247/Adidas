import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/home_screen_navi.dart';

void main() {
  runApp(myApp());
}

Widget myApp() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false, // Optional: Removes debug banner
    home: HomeScreenNavi(), // Correctly setting HomeScreen as the home widget
  );
}