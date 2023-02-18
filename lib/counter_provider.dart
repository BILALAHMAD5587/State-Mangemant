import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int count = 0;

  int get countValue => count;


 set countValue(int value){
  count += value;
  notifyListeners();
}

void incrementCounter(){
   count++;
   notifyListeners();
}


}