import 'package:flutter/cupertino.dart';

class SettingViewModel extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleSwitch() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
