import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';
import 'package:homework_tracker/reusable/SubmitTaskButton.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: TitleInput(
              inputHint: 'Task title',
              multiline: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TitleInput(
              inputHint: 'Task description',
            ),
          ),

          //TODO 1: Add a subject dropdown tab and a due date calendar tab. They should be side by side
        ],
      ),
      bottomNavigationBar: SubmitButton(
        buttonFunction: () {
          print('Add a task now');
          Navigator.pop(context);
        },
      ),
    );
  }
}

class TitleInput extends StatefulWidget {
  TitleInput({@required this.inputHint, this.multiline});
  String inputHint;
  int multiline;

  @override
  _TitleInputState createState() => _TitleInputState();
}

class _TitleInputState extends State<TitleInput> {
  String variableName;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: widget.multiline,
      decoration: new InputDecoration(
        //border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kMainAccentColor),
        ),
        labelStyle: new TextStyle(color: Colors.grey),
        labelText: widget.inputHint,
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
