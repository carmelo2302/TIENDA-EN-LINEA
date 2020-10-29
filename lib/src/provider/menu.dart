import 'package:flutter/material.dart';

class Menu with ChangeNotifier {
  int _ind = 0;

  get ind {
    return _ind;
  }

  set ind(int ind) {
    this._ind = ind;
    notifyListeners();
  }
}
