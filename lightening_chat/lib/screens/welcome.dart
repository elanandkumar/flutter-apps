import "package:flutter/material.dart";
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lightening_chat/components/rounded_button.dart';
import 'package:lightening_chat/screens/login.dart';
import 'package:lightening_chat/screens/registration.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(
      begin: Colors.orange,
      end: Colors.white,
    ).animate(controller);
    /*animation = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );*/

    controller.forward();

    /*
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    */

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Hero(
                      tag: 'logo',
                      child: Icon(
                        Icons.flash_on,
                        color: Colors.orange,
                        size: 45.0,
                      ),
                    ),
                  ),
                  TypewriterAnimatedTextKit(
                      isRepeatingAnimation: false,
                      speed: Duration(milliseconds: 500),
                      text: ['Lightening Chat'],
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            RoundedButton(
              label: 'Log In',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  LoginScreen.id,
                );
              },
              backgroundColor: Colors.blue,
            ),
            RoundedButton(
              label: 'Register',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RegistrationScreen.id,
                );
              },
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
