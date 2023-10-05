import 'package:flutter/material.dart';

import '../models/task.dart';
import 'TaskTile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

List<Task> tasks = [
  Task(name: 'Buy Milk'),
  Task(name: 'Buy eggs'),
  Task(name: 'Buy choco'),
];

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
