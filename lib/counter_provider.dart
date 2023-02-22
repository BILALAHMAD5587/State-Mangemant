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

void decrementCounter(){
   count--;
   notifyListeners();
}


List<Map<String, dynamic>> arrData = [];


 List<Map<String, dynamic>> get listData => arrData;

 void addlistData({required Map<String, dynamic> value}){
   arrData.add(value);
   notifyListeners();

 }
void removeData({required int index}){
   arrData.removeAt(index);
   notifyListeners();
}



}