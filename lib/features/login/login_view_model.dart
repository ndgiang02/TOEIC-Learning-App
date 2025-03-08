import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/model/user/user_model.dart';
import '../../core/repository/auth/auth_repository_api.dart';
import '../../core/services/session_controller/secsion_controller.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthHttpApiRepository _authRepository = AuthHttpApiRepository();
  UserModel? _user;
  bool _isLoading = true;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _user != null;

/*  Future<void> login(dynamic data) async {
    _isLoading = true;
    notifyListeners();
    _user = await _authRepository.loginApi(data);
    _isLoading = false;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }*/

  Future<void> login(Map<String, String> data, BuildContext context) async {
    _isLoading = true;
    notifyListeners();

    final response = await _authRepository.loginApi(data);

    if (response['statusCode'] == 200 && response['hasError'] == false) {
      final userData = response['data'];
      final token = userData['token'];
      final user = UserModel.fromJson(userData['user']);
      await SessionController().saveUserInPreference(user, token);
      _user = user;
      _isLoading = false;
      notifyListeners();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Login successful!"), backgroundColor: Colors.green),
      );
      context.go('/home');
    } else {
      _isLoading = false;
      notifyListeners();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Login failed! Please check your credentials."),
            backgroundColor: Colors.red),
      );
    }
  }

  Future<void> logout(BuildContext context) async {
    await SessionController().clearSession();
    _user = null;
    notifyListeners();
    context.go('/login');
  }
}
