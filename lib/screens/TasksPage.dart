import 'package:flutter/material.dart';
import 'package:homework_tracker/reusable/AddTaskButton.dart';
import 'package:homework_tracker/const.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kForegroundColor,
        centerTitle: true,
        title: Text(
          'Homework Tasks',
          style: kMainTextStyle,
        ),
      ),
      body: Column(
        children: [
          //TODO: The added tasks should be displayed here

          AddTaskButton(
            title: 'Add task',
          ),
        ],
      ),
    );
  }
}
