import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me Anything'),
          backgroundColor: Colors.black54,
        ),
        backgroundColor: Colors.amberAccent,
        body: MagicEight(),
      ),
    ),
  );
}

class MagicEight extends StatefulWidget {
  const MagicEight({Key? key}) : super(key: key);

  @override
  _MagicEightState createState() => _MagicEightState();
}

class _MagicEightState extends State<MagicEight> {
  int changeValue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              changeValue = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$changeValue.png'),
        ),
      ),
    );
  }
}
