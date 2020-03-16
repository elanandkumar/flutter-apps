import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.label, @required this.onPressed, this.backgroundColor});

  final String label;
  final Color backgroundColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: MaterialButton(
        height: 50.0,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: backgroundColor,
        child: Text(
          label,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
