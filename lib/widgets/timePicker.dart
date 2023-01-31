import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';
import 'package:todo_app_ui/models/time.dart';

Container timePicker({time, context}) {
  FixedExtentScrollController controller = FixedExtentScrollController();
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: prColor,
    ),
    width: 100,
    height: 100,
    child: ListWheelScrollView.useDelegate(
      controller: controller,
      diameterRatio: 0.8,
      physics: const FixedExtentScrollPhysics(),
      itemExtent: 28,
      childDelegate: ListWheelChildBuilderDelegate(
        childCount: time,
        builder: (context, index) {
          print(controller.selectedItem);
          return Time(time: index);
        },
      ),
    ),
  );
}
