import 'dart:convert';
import 'package:flutter/material.dart';

import '../../model/user/user_model.dart';
import '../local_storage/local_storage.dart';

//singleton class
class SessionController {
  LocalStorage sharedPreferenceClass = LocalStorage();
  static final SessionController _session = SessionController._internel();

  bool? isLogin;
  UserModel user = UserModel();

  factory SessionController() {
    return _session;
  }

  SessionController._internel() {
    isLogin = false;
  }

  Future<void> saveUserInPreference(dynamic user) async {
    sharedPreferenceClass.setValue('token', jsonEncode(user));
    sharedPreferenceClass.setValue('isLogin', 'true');
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await sharedPreferenceClass.readValue('token');
      var isLogin = await sharedPreferenceClass.readValue('isLogin');

      if (userData != null && userData.isNotEmpty) {
        SessionController().user = UserModel.fromJson(jsonDecode(userData));
      }

      SessionController().isLogin = (isLogin != null && isLogin == 'true') ? true : false;
    } catch (e) {
      debugPrint("Error in getUserFromPreference: $e");
    }
  }
}
