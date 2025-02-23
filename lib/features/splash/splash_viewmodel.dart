import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../../core/services/session_controller/secsion_controller.dart';

class SplashViewModel extends ChangeNotifier {
  final SessionController _sessionController = SessionController();
  bool _isAuthenticated = false;
  bool _isLoading = true;

  bool get isAuthenticated => _isAuthenticated;
  bool get isLoading => _isLoading;

  Future<void> checkLoginStatus() async {
    await _sessionController.getUserFromPreference();
    await Future.delayed(Duration(seconds: 1));
    _isAuthenticated = _sessionController.isLogin ?? false;
    _isLoading = false;
    notifyListeners();
  }
}
