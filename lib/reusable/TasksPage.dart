import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';

class AddTaskButton extends StatelessWidget {
  AddTaskButton({@required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: kLighterAccentColor),
            ),
            onPressed: () {
              //Redirect to the input page
            },
            color: kMainAccentColor,
            textColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
