import 'package:flutter/material.dart';
import 'package:todo_app_ui/widgets/DayPicker.dart';
import 'package:todo_app_ui/widgets/timePicker.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});
  static String routename = '/addTask';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 10),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            const Text(
              'Add new task',
              style: TextStyle(fontSize: 25),
            ),
            textField(),
            Row(
              children: [
                timePicker(time: 12, context: context),
                const SizedBox(
                  width: 10,
                ),
                timePicker(time: 60, context: context),
                const SizedBox(
                  width: 10,
                ),
                DayPicker(time: 2, context: context),
              ],
            ),
            Container()
          ]),
        ),
      ),
    );
  }

  Widget textField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'example "wake up"', enabled: true),
    );
  }
}
