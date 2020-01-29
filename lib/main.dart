import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playSound({int noteValue}) {
    final player = AudioCache();
    player.play('note$noteValue.wav');
  }

  Expanded buildKey({int noteValue, Color color}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () => playSound(noteValue: noteValue),
          child: Text('Note $noteValue'),
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(noteValue: 1, color: Colors.red),
                buildKey(noteValue: 2, color: Colors.orange),
                buildKey(noteValue: 3, color: Colors.yellow),
                buildKey(noteValue: 4, color: Colors.green),
                buildKey(noteValue: 5, color: Colors.blue),
                buildKey(noteValue: 6, color: Colors.purple),
                buildKey(noteValue: 7, color: Colors.brown),
              ],
            ),
          ),
        ),
      );
}
