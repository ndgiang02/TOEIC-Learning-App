import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/configs/app_url.dart';
import '../../data/network/base_api_services.dart';
import '../../data/network/network_api_services.dart';
import '../../model/user/user_model.dart';
import 'auth_repository.dart';

class AuthHttpApiRepository implements AuthRepository {

  final BaseApiServices _apiServices = NetworkApiService() ;

  @override
  Future<UserModel> loginApi(dynamic data )async {
    dynamic response = await _apiServices.getPostApiResponse(
        AppUrl.loginEndPint, data);
    return UserModel.fromJson(response);
  }


}