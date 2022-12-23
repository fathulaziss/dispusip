import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/controllers/utility_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final cUtil = Get.find<UtilityController>();
  final cUserInfo = Get.find<UserInfoController>();

  final cUsername = TextEditingController();
  RxString username = ''.obs;
  RxBool isValidUsername = false.obs;

  final cPassword = TextEditingController();
  RxString password = ''.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  void setUsername(String value) {
    if (value == OPEN_LOG) {
      cUtil.showLogButton();
    }
    if (value == CLOSE_LOG) {
      AppStorage.delete(key: CACHE_API_LOG);
      cUtil.hideLogButton();
    }

    username(value);
    if (username.value.isNotEmpty) {
      isValidUsername(true);
    } else {
      isValidUsername(false);
    }
    validateForm();
  }

  void setPassword(String value) {
    password(value);
    if (password.value.isNotEmpty) {
      isValidPassword(true);
    } else {
      isValidPassword(false);
    }
    validateForm();
  }

  void validateForm() {
    if (isValidUsername.value && isValidPassword.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> login() async {
    try {
      AppUtils.dismissKeyboard();

      isLoading(true);

      final fcm = await AppStorage.read(key: FCM_TOKEN);

      final parameters = {
        'username': username.value,
        'password': password.value,
        'fcm_key': fcm,
      };

      final r = await ApiService().request(
        url: 'auth/login',
        method: Method.POST,
        isToken: false,
        parameters: parameters,
      );

      isLoading(false);

      cUserInfo.statusUser(r['status'] ?? '');

      await AppStorage.write(key: CACHE_ACCESS_TOKEN, value: r['auth_key']);

      await Get.offNamed(Routes.HOME);
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
