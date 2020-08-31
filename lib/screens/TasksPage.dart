import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';
import 'package:homework_tracker/screens/InputTask.dart';

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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Go to task input');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputTask(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: kMainAccentColor,
        splashColor: kLighterAccentColor,
      ),
    );
  }
}
