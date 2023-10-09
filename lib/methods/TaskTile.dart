import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  bool? isChecked;
  final String? taskTitle;

  TaskTile({this.isChecked, this.taskTitle});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  parantFunction(bool? newValue) {
    setState(() {
      widget.isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle!,
        style: TextStyle(
            decoration: widget.isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: widget.isChecked,
        activeFunction: parantFunction,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? isChecked;
  final Function(bool?)? activeFunction;

  TaskCheckBox({
    super.key,
    required this.isChecked,
    required this.activeFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: activeFunction,
      activeColor: Colors.purple[700],
      value: isChecked,

      // onChanged: toggleCheckboxState,
    );
  }
}

// (bool? checkboxState) {
//             setState(() {
//               isChecked = checkboxState!;
//             });
//           }

