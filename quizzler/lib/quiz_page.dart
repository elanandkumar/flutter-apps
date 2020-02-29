import 'package:flutter/material.dart';
import 'package:quizzler/custom_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> _scoreKeeper = [];

  void _showAlert() {
    Alert(
      context: context,
      title: "Finished",
      type: AlertType.success,
      desc: "Quiz has finished. Do you want to restart?",
      style: AlertStyle(
        isCloseButton: false,
        isOverlayTapDismiss: false,
      ),
      buttons: [
        DialogButton(
          child: Text(
            'OK',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ).show();
  }

  void _updateScoreKeeper() {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    if (correctAnswer == true) {
      _scoreKeeper.add(
        Icon(Icons.check, color: Colors.green),
      );
    } else {
      _scoreKeeper.add(
        Icon(Icons.close, color: Colors.red),
      );
    }
  }

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished()) {
        _showAlert();
        _scoreKeeper.clear();
        quizBrain.restart();
      } else {
        _updateScoreKeeper();
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 45.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.5,
                    blurRadius: 5.0,
                    // offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Color(0xFF2C3757)),
              ),
            ),
          ),
        ),
        CustomButton(
          label: 'True',
          onPressed: checkAnswer,
          color: Colors.green,
        ),
        CustomButton(
          label: 'false',
          onPressed: checkAnswer,
          color: Colors.red,
        ),
        SizedBox(
          height: 10.0,
          width: 150.0,
          child: Divider(color: Colors.blue.shade100),
        ),
        Container(
          height: 35.0,
          child: Row(
            children: _scoreKeeper,
          ),
        ),
      ],
    );
  }
}
