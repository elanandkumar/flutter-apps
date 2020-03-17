import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function onChanged;

  TaskTile({this.taskTitle, this.isChecked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey.shade100,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFF9FBDBC),
        checkColor: Color(0xFF1A3532),
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
