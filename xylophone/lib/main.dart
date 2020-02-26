import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    assetsAudioPlayer.open("assets/audios/note$noteNumber.wav");
    assetsAudioPlayer.play();
  }

  Expanded buildXylophoneKey({Color color, int noteNumber}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, (noteNumber - 1) * 40.0, 0),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
          ),
          onPressed: () {
            playSound(noteNumber);
          },
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildXylophoneKey(color: Colors.red, noteNumber: 1),
              buildXylophoneKey(color: Colors.orange, noteNumber: 2),
              buildXylophoneKey(color: Colors.yellow, noteNumber: 3),
              buildXylophoneKey(color: Colors.green, noteNumber: 4),
              buildXylophoneKey(color: Colors.teal, noteNumber: 5),
              buildXylophoneKey(color: Colors.blue, noteNumber: 6),
              buildXylophoneKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
