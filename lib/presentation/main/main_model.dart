import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'お気に入りの本を追加しよう';

  void changeKboyText() {
    kboyText = 'kboyyyyyyyy';
    notifyListeners();
  }
}
