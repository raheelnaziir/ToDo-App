import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/save_task.dart';


class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-todo-screen');
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<SaveTask> (builder: (context, task, child) {
        return ListView.builder(
          itemCount: task.tasks.length,

          itemBuilder: (BuildContext context, index) {

          return ListTile(
            title: Text(task.tasks[index].title),
          );
      },
        );
      },
      ),
    );
  }
}