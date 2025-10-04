
import 'package:flutter/cupertino.dart';
import 'package:todo_application/models/task_models.dart';

class SaveTask extends ChangeNotifier{
    List<Task> _tasks = [
      Task(title: 'Learn flutter', isCompleted: false),
      Task(title: 'Learn python', isCompleted: false),
      Task(title: 'Learn sex', isCompleted: false),
    ];

    List<Task> get tasks => _tasks;

    void addTask(Task task) {
      tasks.add(task);
      notifyListeners();
    }

    void checkTask(int index) {
        tasks[index].isDone();
    }
}