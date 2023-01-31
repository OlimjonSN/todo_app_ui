import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';
import 'package:todo_app_ui/models/day.dart';

Container DayPicker({time, context}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: prColor,
    ),
    width: 100,
    height: 100,
    child: ListWheelScrollView.useDelegate(
      diameterRatio: 0.7,
      physics: const FixedExtentScrollPhysics(),
      itemExtent: 30,
      childDelegate: ListWheelChildBuilderDelegate(
        childCount: time,
        builder: (context, index) {
          return Day(time: index);
        },
      ),
    ),
  );
}
