import 'package:dicee/quastion.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuestionBrain {
  int _quastion_number = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  List<Icon> _scoreKeeper = [];

  void nextQuestion(bool userPickAnswer,BuildContext con) {
    if (_quastion_number < _questionBank.length - 1) {
      bool qAnswer = getQuestionAnswer();

      if (qAnswer == userPickAnswer) {
        _scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        _scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      _quastion_number++;
    } else {
      _quastion_number = 0;
      _scoreKeeper.clear();
     onAlertButtonPressed(con);
    }
  }

  bool getQuestionAnswer() {
    return _questionBank[_quastion_number].questionName;
  }

  String getQuestionText() {
    return _questionBank[_quastion_number].questionText;
  }

  List<Icon> listICON() {
    return _scoreKeeper;
  }

  onAlertButtonPressed(con) {
    Alert(
      context: con,
      type: AlertType.error,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            _quastion_number = 0;
            _scoreKeeper.clear();
            Navigator.pop(con);
          },
          width: 120,
        )
      ],
    ).show();
  }
}
