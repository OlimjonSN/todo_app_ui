import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';
import 'package:todo_app_ui/screens/add_task_page.dart';

class titleDay extends StatelessWidget {
  String day = '';
  titleDay({day}) {
    this.day = day;
  }

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, addTask.routename);
              },
              icon: const Icon(
                Icons.add_circle,
                color: prColor,
                size: 27,
              )),
        ],
      ),
    );
  }
}
