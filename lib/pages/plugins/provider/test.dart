import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TestProviderModel with ChangeNotifier, DiagnosticableTreeMixin {
  int _number = 0;
  int get number => _number;
  set number(int value) {
    _number = value;
    notifyListeners();
  }

  void addNumber() {
    _number++;
    notifyListeners();
  }
}
