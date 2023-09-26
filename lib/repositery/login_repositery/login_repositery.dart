import 'package:getx/data/network/network_api_service.dart';
import 'package:getx/res/app_url/app_url/app_url.dart';

class LoginRepositery {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiServices.postApi(data, AppUrl.loginapi);
    return response;


    
  }
}
