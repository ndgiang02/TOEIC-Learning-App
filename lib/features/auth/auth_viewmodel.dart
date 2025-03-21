import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/configs/utils/dialog.dart';
import '../../core/model/user/user_model.dart';
import '../../core/repository/auth/auth_repository_api.dart';
import '../../core/services/session_controller/secsion_controller.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthHttpApiRepository _authRepository = AuthHttpApiRepository();
  UserModel? _user;
  bool _isLoading = true;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;

  Future<void> login(Map<String, String> data, BuildContext context) async {
    try {
      _isLoading = true;
      DialogManager.show(context, message: "Đang xử lý...", isLoading: true);
      final response = await _authRepository.loginApi(data);
      if (response['statusCode'] == 200 && response['hasError'] == false) {
        final data = response['data'];
        final token = data['token'];
        final user = UserModel.fromJson(data['user']);
        await SessionController().saveUserInPreference(user, token);
        _user = user;
        context.go('/main');
      } else if (response['statusCode'] == 401) {
        DialogManager.show(context,
            message: "Email hoặc mật khẩu không đúng!", isLoading: false);
      } else if (response['statusCode'] == 404) {
        DialogManager.show(context,
            message: "Tài khoản không tồn tại!", isLoading: false);
      } else {
        DialogManager.show(context,
            message: "Đã có lỗi xảy ra, vui lòng thử lại!", isLoading: false);
      }
    } catch (e) {
      DialogManager.show(context, message: "Lỗi: $e", isLoading: false);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> register(Map<String, String> data, BuildContext context) async {
    try {
      _isLoading = true;
      final response = await _authRepository.registerApi(data);
      if (response['statusCode'] == 201 && response['hasError'] == false) {
        _isLoading = false;
        notifyListeners();
        context.go('/login');
      } else if (response['statusCode'] == 409 &&
          response['hasError'] == false) {
        DialogManager.show(context,
            message: "Tài khoản đã tồn tại!", isLoading: false);
      } else {
        DialogManager.show(context,
            message: "Đã có lỗi xảy ra, vui lòng thử lại!", isLoading: false);
        notifyListeners();
      }
    } catch (e) {
      DialogManager.show(context, message: "Lỗi: $e", isLoading: false);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
