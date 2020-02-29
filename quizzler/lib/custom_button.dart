import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.label, @required this.onPressed, this.color});

  final Function onPressed;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: color,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            onPressed(true);
          },
        ),
      ),
    );
  }
}
