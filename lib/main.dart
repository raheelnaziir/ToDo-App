import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_application/pages/add_todo.dart';
import 'models/save_task.dart'; // Make sure this path is correct
import 'pages/todo_list.dart';   // Make sure this path is correct

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
        ,
      ),
      // Define your routes
      initialRoute: '/',
      routes: {
        '/': (context) => const TodoList(),
        '/add-todo-screen': (context) =>  AddTodo(),
      },
    );
  }
}
