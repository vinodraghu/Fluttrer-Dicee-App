import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
//  const ReusableContainer({
//    Key key,
//  }) : super(key: key);

  ReusableContainer({@required this.colour, this.containerChild,this.onPress});

  final Color colour;
  final Widget containerChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}