import 'dart:math';

import 'package:demo/Screen/food.dart';
import 'package:demo/Screen/phone.dart';
import 'package:flutter/material.dart';

import '../Homeitem.dart';
import '../bottomnavigationbar.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<Widget> Pages = [
    MyWidget(),
    PhoneDemo(),
    FoodPage(),
    HomeLand(),
  ];
  int currentindex = 0;
  fctn(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            onTap: (int index) {
              fctn(index);
            },
            iconSize: 40,
            selectedFontSize: 25,
            currentIndex: currentindex,
            backgroundColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            selectedItemColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.car_rental,
                  ),
                  label: "vehicle",
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.phone_android,
                  ),
                  label: "Phone",
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.food_bank,
                  ),
                  label: "Food",
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.house_siding_rounded,
                  ),
                  label: "Hotel",
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
            ]),
        body: Pages[currentindex],
      ),
    );
  }
}
