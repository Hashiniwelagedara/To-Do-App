import 'package:flutter/material.dart';
import '../screens/AddTaskScreen.dart';
import '../methods/TasksList.dart';

class HomeScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
   return AddTaskScreen();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[700],
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30.0, right: 60.0, top: 60.0, bottom: 40.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                child: Icon(
                  Icons.checklist,
                  size: 50.0,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Remindify',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '12 Tasks left',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
