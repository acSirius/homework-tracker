import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';

//Todo: make a page to input a new task. It should ask the user for the following: Title, subject, description and due date.

class InputTask extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String cityName;

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

          //TODO: Add a subject dropdown tab and a due date calendar tab. They should be side by side
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: SubmitButton(
          buttonFunction: () {
            print('Add a task now');
          },
        ),
      ),
    );
  }
}

class TitleInput extends StatelessWidget {
  TitleInput({@required this.inputHint, this.multiline});
  String inputHint;
  int multiline;
  String variableName; // This is where whatever is typed will be saved

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: multiline,
      decoration: new InputDecoration(
        //border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kMainAccentColor),
        ),
        labelStyle: new TextStyle(color: Colors.grey),
        labelText: inputHint,
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  SubmitButton({this.buttonFunction});
  Function buttonFunction;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Text(
          'Add task',
          style: kMainTextStyle,
        ),
      ),
      color: kMainAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: kMainAccentColor),
      ),
      onPressed: buttonFunction,
    );
  }
}
