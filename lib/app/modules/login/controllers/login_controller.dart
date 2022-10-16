import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController cUsername = TextEditingController();
  RxString username = ''.obs;
  RxBool isValidUsername = false.obs;

  TextEditingController cPassword = TextEditingController();
  RxString password = ''.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  void setUsername(String value) {
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
}
