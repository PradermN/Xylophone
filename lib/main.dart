import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.red),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.orange),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.green),
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.teal),
                  ),
                  onPressed: () {
                   playSound(5);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.blue),
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll <Color>(Colors.purple),
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(
                    'Play Sound',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
