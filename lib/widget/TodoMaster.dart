import 'package:flutter/material.dart';
import 'package:todoapp/data/todos.dart' as data;
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/widget/TodoPreview.dart';
import 'package:todoapp/widget/pages/MyHome.dart';

class TodoMaster extends StatelessWidget {
  TodoMaster({Key key, this.tasks}) : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        Task task = tasks[index];
        return TodoPreview(task: task);
      },
    );
  }
}
