import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_things_done/widgets/tasks-list.dart';
import 'package:get_things_done/screens/add-tasks.dart';
import 'package:get_things_done/models/task-store.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasksStore = Provider.of<TaskStore>(context);

    return Scaffold(
      backgroundColor: Color(0xFF1A3532),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Color(0xFF1A3532),
                  ),
                  backgroundColor: Color(0xFF5EB5AC),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Get things done',
                  style: TextStyle(
                    color: Color(0xFF9FBDBC),
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  '${tasksStore.taskCount} Tasks',
                  style: TextStyle(
                    color: Color(0xFF9FBDBC),
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFF27423F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5EB5AC),
        child: Icon(
          Icons.add,
          size: 30.0,
          color: Color(0xFF1A3532),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTasksScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
