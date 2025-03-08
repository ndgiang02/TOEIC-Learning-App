import 'package:flutter/material.dart';

import '../../core/model/user/user_model.dart';
import '../../core/repository/auth/auth_repository_api.dart';

class RegisterViewModel extends ChangeNotifier {
  final AuthHttpApiRepository _authRepository = AuthHttpApiRepository();
  UserModel? _user;
  bool _isLoading = true;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _user != null;

  Future<void> register(dynamic data) async {
    _isLoading = true;
    notifyListeners();
    _user = await _authRepository.registerApi(data);
    _isLoading = false;
    notifyListeners();
  }


}
