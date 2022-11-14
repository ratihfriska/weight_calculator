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
    if (_bmi <= 18.5) {
      return 'Under Bobot';
    } else if (_bmi >= 18.5 && _bmi <= 23) {
      return 'Sehat dekkk';
    } else if (_bmi >= 23 && _bmi <= 25) {
      return 'Over Bobot';
    } else if (_bmi >= 25 && _bmi <= 30) {
      return 'Obesitas 1';
    } else {
      return 'Obesitas 2';
    }
  }

  String getInterpretation() {
    if (_bmi >= 23 && _bmi <= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5 && _bmi <= 23) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi <= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
