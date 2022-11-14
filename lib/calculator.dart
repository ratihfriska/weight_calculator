import 'dart:math';
import 'constants.dart';

class Calculator {
  Calculator(
      {required this.height, required this.age, required this.gender});

  final int height;
  final int age;
  final Gender gender;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = (height-100) - ((height-100) * 10/100);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == _bmi) {
      return 'Your Ideal Weight';
    } else {
      return 'Oh noo, yo dont have ideal weight';
    }
  }

  String getInterpretation() {
    if (_bmi == _bmi) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
