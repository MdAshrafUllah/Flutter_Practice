import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void add() {
    _counter++;
    notifyListeners();
  }

  void subtract() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
}
