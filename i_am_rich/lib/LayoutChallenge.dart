import 'package:flutter/material.dart';

class LayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  color: Colors.red,
                  width: 100.0
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.yellow
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green
                  )
                ],
              ),
              Container(
                  color: Colors.blue,
                  width: 100.0
              ),
            ],
          ),
        ),
      ),
    );
  }
}

