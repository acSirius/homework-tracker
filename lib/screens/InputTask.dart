import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';
import 'package:homework_tracker/reusable/SubmitTaskButton.dart';
//Todo: make a page to input a new task. It should ask the user for the following: Title, subject, description and due date.

List<String> tasksTitles = [];

List<String> tasksDescriptions = [];

class InputTask extends StatefulWidget {
  static String id = '/inputTask';

  @override
  _InputTaskState createState() => _InputTaskState();
}

class _InputTaskState extends State<InputTask> {
  String title;
  String description;

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
              function: (value) {
                title = value;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TitleInput(
              inputHint: 'Task description',
              function: (value) {
                description = value;
              },
            ),
          ),

          //TODO 1: Add a subject dropdown tab and a due date calendar tab. They should be side by side
        ],
      ),
      bottomNavigationBar: SubmitButton(
        buttonFunction: () {
          if (title == null || description == null) {
            errorAlert(context);
          } else {
            setState(() {
              tasksTitles.add(title);
              tasksDescriptions.add(description);
            });

            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

class TitleInput extends StatefulWidget {
  TitleInput({
    @required this.inputHint,
    this.multiline,
    this.function,
  });

  final String inputHint; // Text that will be displayed as a hint
  final int multiline; // Not required. null = infinite lines.
  final Function function;

  @override
  _TitleInputState createState() => _TitleInputState();
}

class _TitleInputState extends State<TitleInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.function,
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

errorAlert(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: kForegroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Row(
          children: [
            Text(
              'Error',
              style: kMainTextStyle.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.error_outline_outlined,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
        content: Text('One or more of the input bars were left empty',
            style: kMainTextStyle),
        actions: [
          RaisedButton(
            // Make button close alert
            onPressed: () => Navigator.pop(context),
            color: kMainAccentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            padding: const EdgeInsets.all(0.0), //DO NOT REMOVE
            child: Container(
              //decoration: const BoxDecoration(color: kMainAccentColor),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Dismiss',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
