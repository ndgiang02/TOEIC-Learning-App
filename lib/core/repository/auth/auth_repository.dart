import '../../model/user/user_model.dart';

abstract class AuthRepository {

  Future<Map<String, dynamic>> loginApi(dynamic data);
  Future<UserModel> registerApi(dynamic data);

}