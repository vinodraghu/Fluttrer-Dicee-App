import 'package:flutter/material.dart';
import 'package:dicee/const.dart';
import 'package:dicee/components/reusablecontainer.dart';
import 'package:dicee/components/bottombutton.dart';

class BMICalculatorResult extends StatelessWidget {

  BMICalculatorResult({@required this.bmiResult,@required this.bmiResultText,@required this.interPretation});

  final String bmiResult;
  final String bmiResultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        backgroundColor: kbottomContainerColour,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktopTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kactiveCardColour,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResultText.toUpperCase(),
                    style: kHTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kNumberTextStyle,
                  ),
                  Text(
                    interPretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              bText: 'Re-Calculate',
              onTab: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
