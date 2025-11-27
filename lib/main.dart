import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber, required String label}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(color),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          label,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, label: 'Do'),
              buildKey(color: Colors.orange, soundNumber: 2, label: 'Re'),
              buildKey(color: Colors.yellow, soundNumber: 3, label: 'Mi'),
              buildKey(color: Colors.green, soundNumber: 4, label: 'Fa'),
              buildKey(color: Colors.teal, soundNumber: 5, label: 'Sol'),
              buildKey(color: Colors.blue, soundNumber: 6, label: 'La'),
              buildKey(color: Colors.purple, soundNumber: 7, label: 'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
