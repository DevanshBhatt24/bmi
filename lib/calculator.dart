
import 'dart:math';
class calculator{
  final int height;
  final int weight;
  calculator({required this.height,required this.weight});
  String  calculate(){
    double bmi=(weight)/pow(height/100, 2);
    print(bmi);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    double _bmi=(weight)/pow(height/100, 2);
    if(_bmi>=(25)){
      return 'Overweight';
    }
    else if(_bmi>(18)){
      return "Normal";
    }
    else
      return 'underweight';
  }
  String getinter(){
    double bm=(weight)/pow(height/100, 2);
    if(bm>=(25)){
      return 'You have a higher than normal body weight.Try exercise more';
    }
    else if(bm>(18)){
      return "You have a Normal body weight. Good Job";
    }
    else
      return 'You have a lower than normal body weight. Eat a bit more';
  }
}
