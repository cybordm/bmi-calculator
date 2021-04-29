import 'dart:math';

class Calculator{
  Calculator({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatorBmi(){
     _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (_bmi>=25){
      return 'lets go!,you can reduce weight';
    }
    else if(_bmi>18.5){
      return 'you are good!';
    }
    else{
      return 'eat more human,there is a lot of food left';
    }
  }
}