import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../../core/services/session_controller/secsion_controller.dart';

class SplashViewModel extends ChangeNotifier {
  final SessionController _sessionController = SessionController();
  bool _isLoading = true;
  bool _isAuthenticated = false;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> checkLoginStatus() async {
    _isLoading = true;
    await Future.delayed(Duration(seconds: 2));
    await _sessionController.getUserFromPreference();
    _isAuthenticated = _sessionController.isLogin;
    _isLoading = false;
    notifyListeners();
  }

  void setAuthenticated(bool value) {
    _isAuthenticated = value;
    notifyListeners();
  }

}
