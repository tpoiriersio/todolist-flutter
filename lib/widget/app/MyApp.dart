import 'package:flutter/material.dart';
import 'package:todoapp/data/todos.dart' as data;
import 'package:todoapp/widget/pages/AllTodoPage.dart';

class MyApp extends StatelessWidget {
  final String _title = "Liste de tâches";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllTodoPage(title: 'Liste de tâches', tasks: data.tasks),
    );
  }
}
