import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey(Color color, int soundnumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(soundnumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.purpleAccent, 1),
              buildkey(Colors.cyan, 2),
              buildkey(Colors.green, 3),
              buildkey(Colors.yellow, 4),
              buildkey(Colors.brown, 5),
              buildkey(Colors.deepOrange, 6),
              buildkey(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
