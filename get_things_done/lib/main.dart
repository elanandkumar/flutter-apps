import 'package:flutter/material.dart';
import 'package:get_things_done/screens/tasks-screen.dart';

void main() => runApp(GetThingsDone());

class GetThingsDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          unselectedWidgetColor: Color(0xFF9FBDBC),
        ),
        home: TasksScreen());
  }
}
