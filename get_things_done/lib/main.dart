import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_things_done/screens/tasks-screen.dart';
import 'package:get_things_done/models/task-store.dart';

void main() => runApp(GetThingsDone());

class GetThingsDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskStore>(
      create: (_) => TaskStore(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          unselectedWidgetColor: Color(0xFF9FBDBC),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
