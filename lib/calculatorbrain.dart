import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
        return 'UnderWeight';
    }
  }

  String interPretation() {
    if (_bmi >= 25) {
      return 'OverWeight h';
    }
    else if (_bmi > 18.5) {
      return 'Normal h';
    }
    else {
      return 'UnderWeight h';
    }
  }


}