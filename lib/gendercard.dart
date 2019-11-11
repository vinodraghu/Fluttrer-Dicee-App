import 'package:flutter/material.dart';
import 'const.dart';


class GenderCard extends StatelessWidget {
  GenderCard({@required this.genderIcon, @required this.genderName});

  final IconData genderIcon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderName,
          style: ktextStyle
        ),
      ],
    );
  }
}