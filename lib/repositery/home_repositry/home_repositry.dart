import 'package:getx/data/network/network_api_service.dart';
import 'package:getx/models/home/product_list_api_model.dart';
import 'package:getx/res/app_url/app_url/app_url.dart';

class HomeRepositery {
  final _apiServices = NetworkApiServices();

  Future<ProductModal> userListApi() async {
    dynamic response = await _apiServices.getApi(AppUrl.getapi);
    return ProductModal.fromJson(response);
  }
}
