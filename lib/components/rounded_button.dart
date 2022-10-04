import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color backGroundColor;
  final VoidCallback onPressed;
  final String displayText;

  RoundedButton(
      {required this.backGroundColor,
      required this.onPressed,
      required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: backGroundColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            displayText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
