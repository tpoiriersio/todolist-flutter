import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';

class TodoPreview extends StatelessWidget {
  final String title = "Liste de tâches";

  TodoPreview({Key key, this.task}) : super(key: key);
  final Task task;

  Color _getColor(Task task) {
    return (task.done == true) ? Colors.green : Colors.cyan;
  }

  void _callBack() {
    return print("pressed");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _callBack(),
        child: Card(
          color: _getColor(task),
          child: Text(task.title),
        ));
  }
}
