import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int _counter = 30;
  int currentIndex = 0;
  List<String> sebhaAzkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر",
    "استغفر الله",
  ];
  String zekr = "سبحان الله";

  int get counter => _counter;

  void increment() {
    _counter--;
    if (_counter == 0) {
      // Reset counter
      _counter = 30;

      // Move to the next index
      currentIndex = (currentIndex + 1) % sebhaAzkar.length;

      // Update the zekr
      zekr = sebhaAzkar[currentIndex];
    }

    // Notify listeners about changes
    notifyListeners();
  }
}
