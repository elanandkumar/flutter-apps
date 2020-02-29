import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

const PRIMARY_COLOR = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: PRIMARY_COLOR,
          scaffoldBackgroundColor: PRIMARY_COLOR,
        ),
        home: InputPage());
  }
}
