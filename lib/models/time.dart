import 'package:flutter/cupertino.dart';

class Time extends StatelessWidget {
  int time = 1;
  Time({required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        (time + 1).toString(),
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
