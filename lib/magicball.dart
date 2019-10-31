import 'package:flutter/material.dart';
import 'dart:math';


class MagicBallL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ball"),
      ),
      body: MagicBall(),

    );
  }
}


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;


  void setBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setBall();
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
