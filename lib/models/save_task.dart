
import 'package:flutter/cupertino.dart';
import 'package:todo_application/models/task_models.dart';

class SaveTask extends ChangeNotifier{
    List<Task> _tasks = [
    ];

    List<Task> get tasks => _tasks;

    void addTask(Task task) {
      tasks.add(task);
      notifyListeners();
    }

    void removeTask(Task task) {
      tasks.remove(task);
      notifyListeners();
    }
    void checkTask(int index) {
        tasks[index].isDone();
        notifyListeners();
    }
}