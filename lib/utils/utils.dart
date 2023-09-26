import 'package:flutter/material.dart';
import 'package:getx/res/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        backgroundColor: AppColors.blackColor,
        fontSize: 20,
        textColor: AppColors.whiteColor);
  }

  static snackBar(String message, String title) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.blackColor,
        colorText: AppColors.whiteColor);
  }

  static dialoge(
    String title,
    String message,
  ) {
    Get.defaultDialog(
      title: title,
      middleText: message,
    );
  }
}
