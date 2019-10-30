import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var left_dice_number = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: (){
                print("Left button click");
              },
              child: Image.asset("images/dice$left_dice_number.png"),
            ),
          ),
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                print("Right button click");
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
