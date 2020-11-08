import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String kboyText = 'Kboy';

  void changeKboyText(){
    kboyText = 'kboyyyyyyyy';
    notifyListeners();
  }
}