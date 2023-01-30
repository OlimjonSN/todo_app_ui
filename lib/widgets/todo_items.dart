import 'package:flutter/material.dart';
import 'package:todo_app_ui/colors.dart';

class TodoItems extends StatefulWidget {
  List? day;
  TodoItems(@required day) {
    this.day = day;
  }

  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  @override
  Expanded build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: widget.day!.length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: prColor,
              value: widget.day![index]['bool'],
              onChanged: (newValue) {
                setState(() {
                  widget.day![index]['bool'] = newValue;
                });
              },
              title: Text(
                widget.day![index]['title'].toString(),
                style: TextStyle(
                    color: widget.day![index]['bool']
                        ? Colors.grey
                        : Colors.black),
              ),
              secondary: Text(widget.day![index]['time']),
            );
          },
        ),
      ),
    );
  }
}
