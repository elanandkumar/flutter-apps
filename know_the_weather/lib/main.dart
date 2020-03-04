import 'package:flutter/material.dart';
import 'package:know_the_weather/screens/loading_screen.dart';

void main() => runApp(KnowYourWeather());

class KnowYourWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
