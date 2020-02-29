import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: iconSize),
        SizedBox(height: sizedBoxHeight),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
