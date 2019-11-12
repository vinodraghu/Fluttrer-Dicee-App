import 'package:flutter/material.dart';
import '../const.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.bText, @required this.onTab});

  final String bText;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(
            bText,
            style: kBottomTextStyle,
          ),
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        color: kbottomContainerColour,
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}