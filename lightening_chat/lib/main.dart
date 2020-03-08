import 'package:flutter/material.dart';
import 'package:lightening_chat/screens/welcome.dart';
import 'package:lightening_chat/screens/login.dart';
import 'package:lightening_chat/screens/registration.dart';
import 'package:lightening_chat/screens/chat.dart';

void main() => runApp(LighteningChat());

class LighteningChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.black),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        });
  }
}
