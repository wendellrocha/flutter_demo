import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function onPressed;

  Button(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.orange,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
