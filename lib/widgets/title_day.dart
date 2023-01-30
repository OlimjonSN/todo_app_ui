import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';

Padding titleDay({day}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$day',
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        const Icon(
          Icons.add_circle,
          color: prColor,
          size: 27,
        ),
      ],
    ),
  );
}
