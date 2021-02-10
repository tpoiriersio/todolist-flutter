import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title, this.tasks}) : super(key: key);

  final String title;
  final List<Task> tasks;

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            final Task task = widget.tasks[index];
            return Card(
              child: ListTile(
                title: Text(
                  task.title,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
