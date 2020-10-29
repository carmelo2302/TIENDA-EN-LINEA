import 'package:flutter/material.dart';

class Sexo with ChangeNotifier {
  int _index = 0;

  get index {
    return _index;
  }

  set index(int index) {
    this._index = index;
    notifyListeners();
  }
}
