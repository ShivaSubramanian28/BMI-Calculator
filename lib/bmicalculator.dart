import 'dart:math';

class Bmicalcualtor {

  Bmicalcualtor(
      {required this.height, required this.weight});

  final int height;
  final int weight;


  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getValue(){
    if (_bmi >= 25){
      return 'Overweight';
    }
    else if (_bmi >=18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String descripitionValue(){
    if (_bmi >= 25){
      return 'Your BMI value is more than the normal value , So please do Excerise ';
    }
    else if (_bmi >=18.5){
      return 'You have perfect BMI value , Good Maintain  it';
    }
    else{
      return 'Your BMI value is less than the normal value , Need to eat more protein';
    }
  }
}