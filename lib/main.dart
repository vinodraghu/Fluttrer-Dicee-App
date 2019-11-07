import 'package:flutter/material.dart';
import 'dart:math';
import 'magicball.dart';
import 'package:dicee/audioplay.dart';
import 'package:dicee/quizzler.dart';
import 'destini.dart';

//void main() {
//  return runApp(
//    MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.red,
//        body: AudioPlay(),
//      ),
//    ),
//  );
//}

void main() => runApp(Destini());

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void setDicee() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                setDicee();
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                setDicee();
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
