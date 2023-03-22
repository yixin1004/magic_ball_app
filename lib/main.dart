import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              setState(() {
                ballNumber = _randomNum();
              });
            },
          )),
    );
  }
}

int _randomNum() {
  int num = Random().nextInt(5) + 1;
  return num;
}

