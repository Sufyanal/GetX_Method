import 'package:getx/models/home/product_list_api_model.dart';
import 'package:getx/repositery/home_repositry/home_repositry.dart';
import 'package:get/get.dart';

import '../../../data/response/status.dart';

class HomeController extends GetxController {
  final _api = HomeRepositery();

  final rxRequestStatus = Status.loading.obs;
  final userList = ProductModal().obs;

  void setRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(ProductModal _value) => userList.value = _value;

  void userListApi() {
    _api.userListApi().then((value) => {
        setRequestStatus(Status.complete),
        setUserList(value)
    }).onError((error, stackTrace) => {
     setRequestStatus(Status.error)
    });
  }
}
