import 'package:flutter/material.dart';
import 'package:homework_tracker/reusable/AddTask.dart';
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
          'Homework assignments',
          style: kMainTextStyle,
        ),
      ),
      body: Column(
        children: [
          AddTaskButton(),
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
