import 'package:flutter/material.dart';
import 'package:get_things_done/widgets/TasksTile.dart';
import 'package:get_things_done/models/Task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Task task = widget.tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          onChanged: (checkboxState) {
            setState((){
              task.toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
