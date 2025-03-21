import '../../model/user/user_model.dart';

abstract class AuthRepository {

  Future<Map<String, dynamic>> loginApi(dynamic data);
  Future<Map<String, dynamic>> getUserInfo(dynamic data);
  Future<Map<String, dynamic>> registerApi(dynamic data);
  Future<Map<String, dynamic>> logoutApi(dynamic data);


}