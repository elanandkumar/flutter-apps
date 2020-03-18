import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskStore extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'hello one'),
    Task(name: 'hello two'),
    Task(name: 'hello three'),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  int get taskCount => _tasks.length;

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
