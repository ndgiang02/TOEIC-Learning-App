import 'dart:convert';
import 'dart:developer';
import '../local_storage/local_storage.dart';
import '../../model/user/user_model.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();
  factory SessionController() => _instance;

  LocalStorage sharedPreferenceClass = LocalStorage();

  bool isLogin = false;
  UserModel user = UserModel();

  SessionController._internal();

  Future<void> saveUserInPreference(UserModel user, String token) async {
    try {
      await sharedPreferenceClass.setValue('token', token);
      await sharedPreferenceClass.setValue('user', jsonEncode(user.toJson()));
      await sharedPreferenceClass.setValue('isLogin', 'true');
      _instance.user = user;
      _instance.isLogin = true;
    } catch (e) {
      log("Error saving user: $e");
    }
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await sharedPreferenceClass.readValue('user');
      var loginStatus = await sharedPreferenceClass.readValue('isLogin');

      if (userData != null && userData.isNotEmpty) {
        _instance.user = UserModel.fromJson(jsonDecode(userData));
        log("User loaded: ${_instance.user.fullName}");
        _instance.isLogin = (loginStatus == 'true');
      } else {
        log("No user found in SharedPreferences!");
        _instance.isLogin = (loginStatus == 'false');
      }
    } catch (e) {
      log("Error in getUserFromPreference: $e");
    }
  }

  Future<void> clearSession() async {
    try {
      await sharedPreferenceClass.clearValue('token');
      await sharedPreferenceClass.clearValue('isLogin');
      _instance.user = UserModel();
      _instance.isLogin = false;
    } catch (e) {
      log("Error clearing session: $e");
    }
  }
}
