import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    switch (soundNumber) {
      case 1:
        player.play(AssetSource('note1.wav'));
        break;
      case 2:
        player.play(AssetSource('note2.wav'));
        break;
      case 3:
        player.play(AssetSource('note3.wav'));
        break;
      case 4:
        player.play(AssetSource('note4.wav'));
        break;
      case 5:
        player.play(AssetSource('note5.wav'));
        break;
      case 6:
        player.play(AssetSource('note6.wav'));
        break;
      case 7:
        player.play(AssetSource('note7.wav'));
        break;
      default:
        player.play(AssetSource('note1.wav'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  pianoButton(Colors.red, 1, '도'),
                  pianoButton(Colors.orange, 2, '레'),
                  pianoButton(Colors.yellow, 3, '미'),
                  pianoButton(Colors.green, 4, '파'),
                  pianoButton(Colors.blue, 5, '솔'),
                  pianoButton(Colors.indigo, 6, '라'),
                  pianoButton(Colors.purple, 7, '시'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Expanded pianoButton(Color color, int soundNumber, String noteName) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          border: Border(
            top: BorderSide(color: Colors.black, width: 2.0),
            bottom: BorderSide(color: Colors.black, width: 2.0),
          ),
          borderRadius: BorderRadius.zero,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Transform.rotate(
            angle: pi / 2,
            child: Text(noteName, style: TextStyle(color: Colors.white, fontSize: 20.0)),

          ),
        ),
      ),
    );
  }
}
