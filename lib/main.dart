import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
              child: Text(
                'Play Sound',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
