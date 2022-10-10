import 'package:demo/container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myarry = [
    [
      "Dog",
      false,
    ],
    [
      "Man",
      false,
    ],
    [
      "Piug",
      false,
    ],
    ["Rayhan", false]
  ];

  void fctn(int index) {
    setState(() {
      for (int i = 0; i < myarry.length; i++) {
        myarry[i][1] = false;
      }

      myarry[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 60,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myarry.length,
              itemBuilder: ((context, index) {
                return Mycat(
                    name: myarry[index][0],
                    istrue: myarry[index][1],
                    click: () {
                      fctn(index);
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              color: Colors.red,
                            );
                          });
                    });
              })),
        ),
      ),
    );
  }
}
