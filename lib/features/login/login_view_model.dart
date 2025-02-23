import 'package:flutter/material.dart';

import '../../core/model/user/user_model.dart';
import '../../core/repository/auth/auth_repository_api.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthHttpApiRepository _authRepository = AuthHttpApiRepository();
  UserModel? _user;
  bool _isLoading = true;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _user != null;

  Future<void> login(dynamic data) async {
    _isLoading = true;
    notifyListeners();

    _user = await _authRepository.loginApi(data);

    _isLoading = false;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }

}
