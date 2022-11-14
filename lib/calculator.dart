import 'dart:math';
import 'constants.dart';

class Calculator {
  Calculator(
      {required this.height, required this.age, required this.gender});

  final int height;
  final int age;
  final Gender gender;

  double _idealWeight = 0.0;

  String calculateIdealWeight() {
    _idealWeight = (height-100) - ((height-100) * 10/100);
    return _idealWeight.toStringAsFixed(1);
  }

  String getResult() {
      return 'Your Ideal Weight Is';
    }
  }
