import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({@required this.icon, @required this.onPresed});

  final IconData icon;
  final Function onPresed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPresed,
      child: Icon(icon),
      shape: CircleBorder(),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}