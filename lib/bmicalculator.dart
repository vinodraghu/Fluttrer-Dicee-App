import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecontainer.dart';
import 'gendercard.dart';
import 'const.dart';

enum genderChoose { male, female }

Color turnarycheck;

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primaryColor: Color(0xFF0A0E21),
//        scaffoldBackgroundColor: Color(0xFF0A0E21),
//        accentColor: Colors.purple,
//        textTheme: TextTheme(
//          body1: TextStyle(color: Colors.white),
//        ),
//      ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderChoose selectedGender;
  int height = 180;
  int weight = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = genderChoose.male;
                        });
                      },
                      colour: selectedGender == genderChoose.male
                          ? kactiveCardColour
                          : kinActiveCardColour,
                      containerChild: GenderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderName: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = genderChoose.female;
                        });
                      },
                      colour: selectedGender == genderChoose.female
                          ? kactiveCardColour
                          : kinActiveCardColour,
                      containerChild: GenderCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderName: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: kactiveCardColour,
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: ktextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: ktextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFFBDBE98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        label: '$height',
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                            // print(height);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ReusableContainer(
                      colour: kactiveCardColour,
                      containerChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: ktextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(
                                icon: FontAwesomeIcons.plus,
                                onPresed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPresed: () {
                                  setState(() {
                                    weight--;
                                  });

                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: kactiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kbottomContainerColour,
              width: double.infinity,
              height: kbottomContainerHeight,
            )
          ],
        )
//      floatingActionButton: Theme(
//        data: ThemeData(accentColor: Colors.purple),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),
        );
  }
}

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
