import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final cOldPassword = TextEditingController();
  RxString oldPassword = ''.obs;
  RxBool isValidOldPassword = false.obs;

  final cNewPassword = TextEditingController();
  RxString newPassword = ''.obs;
  RxBool isValidNewPassword = false.obs;

  final cConfirmNewPassword = TextEditingController();
  RxString confirmNewPassword = ''.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  void setOldPassword(String value) {
    oldPassword(value);
    if (oldPassword.value.isNotEmpty) {
      isValidOldPassword(true);
    } else {
      isValidOldPassword(false);
    }
    validate();
  }

  void setNewPassword(String value) {
    newPassword(value);
    if (newPassword.value.isNotEmpty &&
        confirmNewPassword.value == newPassword.value) {
      isValidNewPassword(true);
    } else {
      isValidNewPassword(false);
    }
    validate();
  }

  void setConfirmNewPassword(String value) {
    confirmNewPassword(value);
    if (confirmNewPassword.value.isNotEmpty &&
        confirmNewPassword.value == newPassword.value) {
      isValidNewPassword(true);
    } else {
      isValidNewPassword(false);
    }
    validate();
  }

  void validate() {
    if (isValidOldPassword.value && isValidNewPassword.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {
        'oldpassword': oldPassword.value,
        'newpassword': newPassword.value,
        'confirmpassword': confirmNewPassword.value,
      };

      final r = await ApiService().request(
        url: 'profile/ubahsandi',
        parameters: parameters,
        method: Method.POST,
      );

      isLoading(false);

      showPopUpInfo(title: 'Success', description: r['message']);
      cOldPassword.clear();
      cNewPassword.clear();
      cConfirmNewPassword.clear();
      oldPassword('');
      newPassword('');
      confirmNewPassword('');
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
