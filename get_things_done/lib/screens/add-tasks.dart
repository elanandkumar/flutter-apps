import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function onPressed;

  AddTasksScreen({this.onPressed});

  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return Container(
      color: Color(0xFF141E1D),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        decoration: BoxDecoration(
          color: Color(0xFF1A3532),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Color(0xFF9FBDBC),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Color(0xFF9FBDBC),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                taskTitle = newTask;
              },
            ),
            FlatButton(
              color: Color(0xFF5EB5AC),
              textColor: Color(0xFF1A3532),
              child: Text('Add'),
              onPressed: (){
                onPressed(taskTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
