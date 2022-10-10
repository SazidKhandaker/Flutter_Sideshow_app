import 'package:demo/Screen/Home/home_page.dart';
import 'package:flutter/material.dart';

import 'Screen/bottomnavigationbar.dart';
import 'Screen/food.dart';
import 'Screen/phone.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
