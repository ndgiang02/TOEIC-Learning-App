import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../core/model/user/user_model.dart';
import '../../core/repository/auth/auth_repository_api.dart';
import '../../core/services/session_controller/secsion_controller.dart';

class SettingViewModel extends ChangeNotifier {

  final AuthHttpApiRepository _authRepository = AuthHttpApiRepository();

  bool _isDarkMode = false;
  bool _isLoading = true;
  UserModel? _user;

  bool get isDarkMode => _isDarkMode;
  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _user != null;

  void toggleSwitch() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  Future<void> getUserInfo(Map<String, String> data) async {
    _isLoading = true;
    notifyListeners();
    final response = await _authRepository.getUserInfo(data);
    if (response['statusCode'] == 200 && response['hasError'] == false) {
      _user = user;
      _isLoading = false;
      notifyListeners();
    } else {
      _isLoading = false;
      notifyListeners();
    }
  }

  void changeTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  Future<void> logout(BuildContext context) async {
    await SessionController().clearSession();
    print("Session cleared");
    _user = null;
    notifyListeners();
    print("User state: $_user");
    context.go('/login');
    /* await SessionController().clearSession();
    _user = null;
    notifyListeners();
    context.go('/login');*/
  }


}
