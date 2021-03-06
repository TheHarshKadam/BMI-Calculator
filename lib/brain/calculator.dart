import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String finalResult() {
    if (_bmi <= 18.5) {
      return "UNDERWEIGHT!";
    } else if ((_bmi > 18.5) && (_bmi < 25)) {
      return "NORMAL";
    } else if ((_bmi >= 25) && (_bmi < 30)) {
      return "OVERWEIGHT!";
    } else if ((_bmi >= 30.0) && (_bmi < 35)) {
      return "HIGHLY OBESED";
    } else if ((_bmi >= 35) && (_bmi < 40)) {
      return "CRITICALLY OBESED!!";
    }
    else{
      return "SEVERLY OBESED!!!";
    }
  }

  String getConclusion() {
    if (_bmi <= 18.5) {
      return "You have lower bmi than normal. You can eat a bit more π₯­πππ₯πππ₯";
    } else if ((_bmi > 18.5) && (_bmi < 25)) {
      return "CONGRATULATIONS!π You have a perfectly healthy body! ππͺππ§ββοΈ";
    } else if ((_bmi >= 25) && (_bmi < 30)) {
      return "You have higher bmi than normal. You can do more excersise!πββοΈποΈββοΈπ΄ββοΈπ€½ββοΈπ€ΈββοΈπ§ββοΈ";
    } else if ((_bmi >= 30.0) && (_bmi < 35)) {
      return "STOP eating junk food right now! And START eating healthy food!!π₯πππ§π₯£π₯";
    } else if ((_bmi >= 35) && (_bmi < 40)) {
      return "This is a CLASS 2 obeseity! You need to loose your weight!!π°π¦π§β ";
    }
    else{
      return "You have diagnosed with CLASS 3 Obeseity!! This is a Serious Health Issue!!!ππ¨ββ ";
    }
  }
}
