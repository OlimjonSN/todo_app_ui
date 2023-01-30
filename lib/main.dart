import 'package:flutter/material.dart';
import 'package:todo_app_ui/screens/add_task_page.dart';
import 'package:todo_app_ui/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Home.routename,
      routes: {
        addTask.routename: (context) => const addTask(),
        Home.routename: (context) => const Home()
      },
    );
  }
}
