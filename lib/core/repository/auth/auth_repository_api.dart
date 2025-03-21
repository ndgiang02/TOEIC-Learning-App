import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/configs/app_url.dart';
import '../../data/network/base_api_services.dart';
import '../../data/network/network_api_services.dart';
import '../../model/user/user_model.dart';
import 'auth_repository.dart';

class AuthHttpApiRepository implements AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  @override
  Future<Map<String, dynamic>> loginApi(dynamic data) async {
    dynamic response =
        await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
    return response;
  }


  @override
  Future<Map<String, dynamic>> getUserInfo(dynamic data) async {
    dynamic response = await _apiServices.getPostApiResponse(AppUrl.getUserEndPoint, data);
    return response;
  }

  @override
  Future<Map<String, dynamic>> registerApi(dynamic data) async {
    dynamic response =
        await _apiServices.getPostApiResponse(AppUrl.registerEndPoint, data);
    return response;
  }

  @override
  Future<Map<String, dynamic>> logoutApi(data) async {
    dynamic response = await _apiServices.getPostApiResponse(AppUrl.logoutEndPoint, data);
    return response;
  }
}
