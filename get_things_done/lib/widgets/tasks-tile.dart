import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function onChanged;
  final Function onLongPress;

  TaskTile({this.taskTitle, this.isChecked, this.onChanged, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
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
