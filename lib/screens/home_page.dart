import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';
import 'package:todo_app_ui/models/todo.dart';
import 'package:todo_app_ui/widgets/todo_items.dart';

import '../widgets/title_day.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static String routename = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    titleDay(day: 'Today'),
                    TodoItems(
                      Today,
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [titleDay(day: 'Tomorow'), TodoItems(Tommorow)],
                ),
              )),
          BottomNavigationBar(
            iconSize: 24,
            backgroundColor: prColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: iconColor,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: iconColor,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
