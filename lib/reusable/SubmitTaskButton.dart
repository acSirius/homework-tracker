import 'package:flutter/material.dart';
import 'package:homework_tracker/const.dart';

class SubmitButton extends StatefulWidget {
  SubmitButton({this.buttonFunction});
  Function buttonFunction;

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            SizedBox(
              width: 8,
            ),
            Text(
              'Add task',
              style: kMainTextStyle,
            ),
          ],
        ),
      ),
      color: kMainAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        side: BorderSide(color: kMainAccentColor),
      ),
      onPressed: widget.buttonFunction,
    );
  }
}
