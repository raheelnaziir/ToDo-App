
import 'package:flutter/cupertino.dart';
import 'package:todo_application/models/task_models.dart';

class SaveTask extends ChangeNotifier{
    List<Task> _tasks = [
      Task(title: 'Learn flutter'),
      Task(title: 'Learn python'),
      Task(title: 'Learn sex'),
    ];

    List<Task> get tasks => _tasks;

    void addTask(Task task) {
      tasks.add(task);
      notifyListeners();
    }
}