import 'package:flutter/material.dart';
import 'package:homework_tracker/reusable/TasksPage.dart';
import 'package:homework_tracker/const.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
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

//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Expanded(
//child: RaisedButton(
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(18.0),
//side: BorderSide(color: kLighterAccentColor),
//),
//onPressed: () {},
//color: kMainAccentColor,
//textColor: Colors.white,
//child: Text(
//"Buy now".toUpperCase(),
//style: TextStyle(fontSize: 14),
//),
//),
//),
//],
//),
