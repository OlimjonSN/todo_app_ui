import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  int time = 1;
  Day({required this.time});

  @override
  Widget build(BuildContext context) {
    List day = ['am', 'pm'];
    return Container(
      child: Center(
          child: Text(
        day[time].toString(),
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
