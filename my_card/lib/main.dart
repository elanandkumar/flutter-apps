import 'package:flutter/material.dart';

void main() => runApp(MyCard());

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Text(
                'Anand Kumar',
                style: TextStyle(
                  fontFamily: 'Sriracha',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'React Developer',
                style: TextStyle(
                  fontFamily: 'FiraSansCond',
                  fontSize: 28.0,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '+91 9205135680',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: 'FiraSansCond',
                      fontSize: 20.0,
                    ),
                  )
                ]
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
