import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Magic 8 Ball'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  getTheAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade600,
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: getTheAnswer,
                child: Image.asset('assets/images/ball$ballNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
