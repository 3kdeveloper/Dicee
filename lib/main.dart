import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void _changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                ),
                onPressed: _changeDice,
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                ),
                onPressed: _changeDice,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
