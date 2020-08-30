import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';

//Todo: make a page to input a new task. It should ask the user for the following: Title, subject, description and due date.

class InputTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kForegroundColor,
        centerTitle: true,
        title: Text(
          'Add a new task',
          style: kMainTextStyle,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
