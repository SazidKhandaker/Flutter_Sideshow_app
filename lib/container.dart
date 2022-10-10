import 'package:flutter/material.dart';

class Mycat extends StatelessWidget {
  String name;
  bool istrue;
  VoidCallback click;
  Mycat({required this.name, required this.istrue, required this.click});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: GestureDetector(
        onTap: click,
        child: Container(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$name",
                style: TextStyle(
                    color: istrue ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 10,
                child: Container(
                  height: 10,
                  width: 20,
                  color: istrue ? Colors.red : Colors.transparent,
                ))
          ]),
        ),
      ),
    );
  }
}
