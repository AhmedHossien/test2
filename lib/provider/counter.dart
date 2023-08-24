import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get getCounter => _counter;

  void add() {
    _counter++;
    notifyListeners();
  }

  void remove() {
    _counter--;
    notifyListeners();
  }
}
