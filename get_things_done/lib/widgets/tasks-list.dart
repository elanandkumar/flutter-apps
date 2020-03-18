import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_things_done/widgets/tasks-tile.dart';
import 'package:get_things_done/models/task.dart';
import 'package:get_things_done/models/task-store.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskStore>(
      builder: (_, taskStore, __) => ListView.builder(
        itemBuilder: (context, index) {
          Task task = taskStore.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            onChanged: (checkboxState) {
              taskStore.updateTask(task);
            },
            onLongPress: (){
              taskStore.deleteTask(task);
            },
          );
        },
        itemCount: taskStore.taskCount,
      ),
    );
  }
}
