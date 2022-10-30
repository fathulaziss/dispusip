import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController cEmail = TextEditingController();
  RxString email = ''.obs;
  RxBool isValidEmail = false.obs;

  RxBool isLoading = false.obs;

  void setEmail(String value) {
    email(value);
    if (email.value.isNotEmpty) {
      isValidEmail(true);
    } else {
      isValidEmail(false);
    }
  }

  Future<void> submit() async {
    try {
      AppUtils.dismissKeyboard();

      isLoading(true);

      final parameters = {'email': email.value};
      final r = await ApiService().request(
        url: 'auth/forgot',
        method: Method.POST,
        parameters: parameters,
      );

      isLoading(false);

      showPopUpInfo(
        title: 'Success',
        description: r['message'],
        labelButton: 'OK',
        onPress: Get.back,
      );
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
