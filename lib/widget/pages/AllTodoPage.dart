import 'package:flutter/material.dart';
import 'package:todoapp/data/todos.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/widget/TodoMaster.dart';

class AllTodoPage extends StatefulWidget {
  AllTodoPage({Key key, this.title, this.tasks}) : super(key: key);

  final String title;
  final List<Task> tasks;

  @override
  _AllTodoPageState createState() => _AllTodoPageState();
}

class _AllTodoPageState extends State<AllTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TodoMaster(tasks: widget.tasks),
      ),
    );
  }
}
