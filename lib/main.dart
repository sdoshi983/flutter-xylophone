import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int track) {
    final player = AudioCache();
    player.play('note$track.wav');
  }

  Expanded Build({Color color, int track}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(track);
        },
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
              Build(color: Colors.red, track: 1),
              Build(color: Colors.blue, track: 2),
              Build(color: Colors.green, track: 3),
              Build(color: Colors.yellow, track: 4),
              Build(color: Colors.teal, track: 5),
              Build(color: Colors.grey, track: 6),
              Build(color: Colors.orange, track: 7),
            ],
          ),
        ),
      ),
    );
  }
}
